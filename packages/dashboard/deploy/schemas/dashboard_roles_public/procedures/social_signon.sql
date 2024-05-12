-- Deploy schemas/dashboard_roles_public/procedures/social_signon to pg

-- requires: schemas/dashboard_roles_public/schema

BEGIN;



	CREATE OR REPLACE FUNCTION dashboard_roles_public.social_signon(
		email text,
		socialid text,
		socialtype socialtype,
		remember_me boolean DEFAULT false,
		OUT apitoken dashboard_roles_private.api_tokens,
		OUT is_new_user BOOLEAN)
		RETURNS record
		LANGUAGE 'plpgsql'
		COST 100
		VOLATILE SECURITY DEFINER PARALLEL UNSAFE
	AS $BODY$
	Declare 
	  v_token "dashboard_roles_private".api_tokens;
	  v_user "dashboard_public".users;
	  v_email "dashboard_public".emails;
	  v_user_is_verified boolean default false;
	  v_user_is_disabled boolean default false;
	  v_user_is_banned boolean default false;
	BEGIN
	social_signon.is_new_user=false;

	IF social_signon.socialtype IS NULL THEN
			RAISE EXCEPTION 'SocialType_IS_Null';
	ELSEIF social_signon.socialid IS NULL OR social_signon.socialid='' THEN
			RAISE EXCEPTION 'SocialId_Is_Null';
	END IF;


	IF social_signon.socialtype='apple'AND (social_signon.email IS NULL OR social_signon.email='' )THEN
		SELECT user_emails_alias.* FROM "dashboard_public".emails AS user_emails_alias
		WHERE user_emails_alias.social_id=trim(social_signon.socialId)::text  AND user_emails_alias.social_type=social_signon.socialType::SocialType 	INTO v_email;
	ELSE
		SELECT user_emails_alias.* FROM "dashboard_public".emails AS user_emails_alias
		WHERE user_emails_alias.email = social_signon.email::email  AND user_emails_alias.social_id=trim(social_signon.socialId)::text  AND 	
		user_emails_alias.social_type=social_signon.socialType::SocialType INTO v_email;
	END IF;


	  IF (NOT FOUND) THEN
			IF social_signon.email IS NULL OR social_signon.email='' THEN
					RAISE EXCEPTION 'Email_IS_Null';
			END IF;
			SELECT * FROM "dashboard_public".emails t
			WHERE trim(social_signon.socialId)::text = t.social_id AND social_signon.socialType::SocialType=t.social_type
			INTO v_email;
			 IF social_signon.email != v_email.email THEN
				RAISE EXCEPTION 'SOCIALID_EXISTS_DIFF_EMAIL';
			 END IF;
			 SELECT * FROM "dashboard_public".emails t WHERE trim(social_signon.email)::email = t.email
			 INTO v_email;
			   IF (NOT FOUND) THEN
				  INSERT INTO "dashboard_public".users
				  DEFAULT VALUES
				  RETURNING * INTO v_user;

				  INSERT INTO "dashboard_public".emails (owner_id, email,social_id,social_type)
				  VALUES (v_user.id, trim(social_signon.email),trim(social_signon.socialId),social_signon.socialType)
				  RETURNING * INTO v_email;
				  social_signon.is_new_user=true;
			 ELSE
				 IF v_email.social_id IS NOT NULL THEN
					  RAISE EXCEPTION 'EMAIL_EXISTS_DIFF_SOCIALTYPE_%',UPPER(CAST (v_email.social_type AS text));
				  ELSE 
            UPDATE "dashboard_public".emails SET social_Id=social_signon.socialId,social_type=social_signon.socialType 
            WHERE id=v_email.id
            RETURNING * INTO v_email;
				 END IF;
			END IF ;
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
		social_signon.apitoken=v_token;

	END;
$BODY$;

GRANT EXECUTE ON FUNCTION dashboard_roles_public.social_signon(text, text, socialtype, boolean) TO anonymous;


COMMIT;
