-- Deploy: schemas/dashboard_roles_public/procedures/register/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/emails/table
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table
-- requires: schemas/dashboard_roles_public/procedures/check_password/procedure

BEGIN;

CREATE FUNCTION "dashboard_roles_public".register (
  email text,
  password text,
  remember_me boolean DEFAULT FALSE
)
  RETURNS "dashboard_roles_private".api_tokens
  AS $$
DECLARE
  v_user "dashboard_public".users;
  v_email "dashboard_public".emails;
  v_token "dashboard_roles_private".api_tokens;
BEGIN
  PERFORM "dashboard_roles_public".check_password(
    password
  );
  password = trim(password);
  SELECT * FROM "dashboard_public".emails t
    WHERE trim(register.email)::email = t.email
  INTO v_email;
  IF (NOT FOUND) THEN
    INSERT INTO "dashboard_public".users
      DEFAULT VALUES
    RETURNING
      * INTO v_user;
    INSERT INTO "dashboard_public".emails (owner_id, email)
      VALUES (v_user.id, trim(register.email))
    RETURNING
      * INTO v_email;
    IF (remember_me IS TRUE) THEN 
      INSERT INTO "dashboard_roles_private".api_tokens (
        user_id,
        access_token_expires_at
      )
      VALUES (
        v_user.id,
        ( NOW() + '1 year'::interval )
      )
      RETURNING
        * INTO v_token;
    ELSE 
      INSERT INTO "dashboard_roles_private".api_tokens (
        user_id
      )
      VALUES (
        v_user.id
      )
      RETURNING
        * INTO v_token;
    END IF;
    PERFORM "dashboard_encrypted".set
      (v_user.id, 'password_hash', trim(password), 'crypt');
    RETURN v_token;
  END IF;
  RAISE EXCEPTION 'ACCOUNT_EXISTS';
END;
$$
LANGUAGE plpgsql
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "dashboard_roles_public".register TO anonymous;
COMMIT;
