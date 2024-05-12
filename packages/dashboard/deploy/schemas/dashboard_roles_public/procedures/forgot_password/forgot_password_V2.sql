-- Deploy dashboard:schemas/dashboard_roles_public/procedures/forgot_password/forgot_password_V2 to pg

BEGIN;


DROP FUNCTION IF EXISTS dashboard_roles_public.forgot_password(email);

CREATE OR REPLACE FUNCTION dashboard_roles_public.forgot_password(
	email email,
	OUT user_token text,
	OUT user_id uuid,
	OUT res_message text)
    RETURNS record
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE SECURITY DEFINER PARALLEL UNSAFE
AS $BODY$
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
    forgot_password.res_message='';
    SELECT * FROM "dashboard_public".emails e
        WHERE e.email = forgot_password.email::email
    INTO v_email;
    IF (NOT FOUND) THEN
		forgot_password.res_message='EMAIL_NOT_FOUND';
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
		forgot_password.res_message='ACCOUNT_DISABLED';
        RETURN;
    END IF;
    password_reset_email_sent_at = "dashboard_simple_secrets".get(v_user_id, 'password_reset_email_sent_at');
    IF (
        password_reset_email_sent_at IS NOT NULL AND
        NOW() < password_reset_email_sent_at + v_min_duration_between_emails
    ) THEN 
		forgot_password.res_message='RESET_PASSWORD_EMAIL_ALREADY_SENT';
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
	forgot_password.user_token=v_token;
	forgot_password.user_id=v_user_id;
	forgot_password.res_message='RESET_PASSWORD_EMAIL_SENT';
    RETURN;
END;
$BODY$;

GRANT EXECUTE ON FUNCTION dashboard_roles_public.forgot_password(email) TO anonymous;

COMMIT;
