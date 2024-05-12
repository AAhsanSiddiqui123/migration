BEGIN;

CREATE OR REPLACE FUNCTION dashboard_roles_public.register_social(
	email text,
	socialId text,
	socialType SocialType,
	remember_me boolean DEFAULT false)
    RETURNS dashboard_roles_private.api_tokens
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE SECURITY DEFINER PARALLEL UNSAFE
AS $BODY$
DECLARE
  v_user "dashboard_public".users;
  v_email "dashboard_public".emails;
  v_socialemail "dashboard_public".emails;
  v_token "dashboard_roles_private".api_tokens;
  v_userId uuid;
BEGIN
  
   
  SELECT * FROM "dashboard_public".emails t
  WHERE t.social_id=trim(register_social.socialId)::text  AND t.social_type=register_social.socialType::SocialType
  INTO v_socialemail;
  IF (FOUND) THEN
	  IF register_social.email != v_socialemail.email THEN
		RAISE EXCEPTION 'SOCIALID_EXISTS_DIFF_EMAIL';
	  ELSE
	    RAISE EXCEPTION 'ACCOUNT_EXISTS';
	  END IF;
  END IF;
  
  SELECT * FROM "dashboard_public".emails t
  WHERE t.email = trim(register_social.email)::email 
  INTO v_email;
  IF (NOT FOUND) THEN
		  INSERT INTO "dashboard_public".users
			  DEFAULT VALUES
			RETURNING
			  * INTO v_user;
			INSERT INTO "dashboard_public".emails (owner_id, email,social_id,social_type)
			  VALUES (v_user.id, trim(register_social.email),trim(register_social.socialId),register_social.socialType)
			RETURNING
			  * INTO v_email;
			v_userId=v_user.id;
  ELSE
	  IF v_email.social_id IS NOT NULL THEN
			RAISE EXCEPTION 'EMAIL_EXISTS_DIFF_SOCIALTYPE_%',UPPER(CAST (v_email.social_type AS text));
	  ELSE 
			UPDATE "dashboard_public".emails SET social_Id=register_social.socialId,social_type=register_social.socialType WHERE id=v_email.id;
		v_userId=v_email.owner_id;
	  END IF;
  END IF ;
  
  IF (remember_me IS TRUE) THEN 
		  INSERT INTO "dashboard_roles_private".api_tokens (
			user_id,
			access_token_expires_at
		  )
		  VALUES (
			v_userId,
			( NOW() + '1 year'::interval )
		  )
		  RETURNING
			* INTO v_token;
	ELSE 
		  INSERT INTO "dashboard_roles_private".api_tokens (
			user_id
		  )
		  VALUES (
			v_userId
		  )
		  RETURNING
			* INTO v_token;
	END IF;	

    RETURN v_token;

END;
$BODY$;

GRANT EXECUTE ON FUNCTION dashboard_roles_public.register(text, text, boolean) TO anonymous;


COMMIT;