-- Deploy schemas/dashboard_roles_public/procedures/login_social to pg

-- requires: schemas/dashboard_roles_public/schema

BEGIN;

CREATE OR REPLACE FUNCTION dashboard_roles_public.login_social(
	email text,
	socialId text,
	socialType SocialType,
	remember_me boolean DEFAULT false)
    RETURNS dashboard_roles_private.api_tokens
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE STRICT SECURITY DEFINER PARALLEL UNSAFE
AS $BODY$
DECLARE
  v_token "dashboard_roles_private".api_tokens;
  v_email "dashboard_public".emails;
  v_user_is_verified boolean default false;
  v_user_is_disabled boolean default false;
  v_user_is_banned boolean default false;
BEGIN

IF login_social.socialtype='apple' THEN
    SELECT
    user_emails_alias.*
  FROM
    "dashboard_public".emails AS user_emails_alias
  WHERE user_emails_alias.social_id=trim(login_social.socialId)::text  AND user_emails_alias.social_type=login_social.socialType::SocialType INTO v_email;
ELSE
    SELECT
    user_emails_alias.*
  FROM
    "dashboard_public".emails AS user_emails_alias
  WHERE user_emails_alias.email = login_social.email::email  AND user_emails_alias.social_id=trim(login_social.socialId)::text  AND user_emails_alias.social_type=login_social.socialType::SocialType INTO v_email;
END IF;
  
  
  IF (NOT FOUND) THEN
	    RAISE EXCEPTION 'ACCOUNT_NOT_EXISTS';
  END IF;

  SELECT  
      is_verified,
      is_disabled,
      is_banned
    FROM "dashboard_memberships_public".app_memberships
    WHERE actor_id = v_email.owner_id
  INTO 
    v_user_is_verified,
    v_user_is_disabled,
    v_user_is_banned;
  IF (v_user_is_disabled IS TRUE OR v_user_is_banned IS TRUE) THEN 
      RAISE EXCEPTION 'ACCOUNT_DISABLED';
  END IF;

    INSERT INTO "dashboard_roles_public".audit_logs 
      (actor_id, event, success)
    VALUES (
      v_email.owner_id,
      'login',
      TRUE
    );
 
    IF (remember_me IS TRUE) THEN 
      INSERT INTO "dashboard_roles_private".api_tokens (
        user_id,
        is_verified,
        last_password_verified,
        access_token_expires_at
      )
      VALUES (
        v_email.owner_id,
        v_user_is_verified,
        current_timestamp,
        ( NOW() + '1 year'::interval )
      )
      RETURNING
        * INTO v_token;
    ELSE 
      INSERT INTO "dashboard_roles_private".api_tokens (
        user_id,
        is_verified,
        last_password_verified
      )
      VALUES (
        v_email.owner_id,
        v_user_is_verified,
        current_timestamp
      )
      RETURNING
        * INTO v_token;
    END IF;
    RETURN v_token;
 
END;
$BODY$;

GRANT EXECUTE ON FUNCTION dashboard_roles_public.login(text, text, boolean) TO anonymous;

COMMIT;
