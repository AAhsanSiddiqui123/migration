-- Revert dashboard:schemas/dashboard_roles_public/procedures/forgot_password/forgot_password_V2 from pg

BEGIN;

 DROP FUNCTION IF EXISTS dashboard_roles_public.forgot_password(email);

CREATE FUNCTION "dashboard_roles_public".forgot_password (email email)
    RETURNS void
AS $$
DECLARE
    v_email "dashboard_public".emails;
    v_user_id uuid;
    v_token text;
    v_min_duration_between_emails interval = interval '3 minutes';
    
    v_max_duration interval = interval '3 days';
    v_user_is_disabled boolean default false;
    v_user_is_banned boolean default false;
    password_reset_email_sent_at timestamptz;
BEGIN
    SELECT * FROM "dashboard_public".emails e
        WHERE e.email = forgot_password.email::email
    INTO v_email;
    IF (NOT FOUND) THEN
        RETURN;
    END IF;
    v_user_id = v_email.owner_id;
    SELECT  
        is_disabled,
        is_banned
        FROM "dashboard_memberships_public".app_memberships
        WHERE actor_id = v_email.owner_id
    INTO 
        v_user_is_disabled,
        v_user_is_banned;
    IF (
        v_user_is_banned IS TRUE OR v_user_is_disabled IS TRUE
        ) THEN
        RETURN;
    END IF;
    password_reset_email_sent_at = "dashboard_simple_secrets".get(v_user_id, 'password_reset_email_sent_at');
    IF (
        password_reset_email_sent_at IS NOT NULL AND
        NOW() < password_reset_email_sent_at + v_min_duration_between_emails
    ) THEN 
        RETURN;
    END IF;
    INSERT INTO "dashboard_roles_public".audit_logs 
      (actor_id, event, success)
    VALUES (
      v_email.owner_id,
      'forgot_password',
      TRUE
    );
    v_token = encode(gen_random_bytes(7), 'hex');
    PERFORM "dashboard_encrypted".set
        (v_user_id, 'reset_password_token', v_token, 'crypt');
    PERFORM "dashboard_simple_secrets".set(v_user_id, 'password_reset_email_sent_at', (NOW())::text);
    PERFORM
        app_jobs.add_job (
            jwt_private.current_database_id(),
            'send-email-link',
            json_build_object(
                'email_type', 'forgot_password',
                'user_id', v_user_id,
                'email', v_email.email::text,
                'reset_token', v_token
            ));
    RETURN;
END;
$$
LANGUAGE 'plpgsql' VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "dashboard_roles_public".forgot_password TO anonymous;

COMMIT;
