-- Deploy: schemas/dashboard_encrypted/procedures/verify/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/algo/column
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/owner_id/column

BEGIN;

CREATE FUNCTION "dashboard_encrypted".verify (
  owner_id uuid,
  secret_name text,
  value text
)
  RETURNS boolean
  AS $$
DECLARE
  v_secret_text text;
  v_secret "dashboard_encrypted".user_encrypted_secrets;
BEGIN
  SELECT
    *
  FROM
    "dashboard_encrypted".get (verify.owner_id, verify.secret_name)
  INTO v_secret_text;
  SELECT
    *
  FROM
    "dashboard_encrypted".user_encrypted_secrets s
  WHERE
    s.name = verify.secret_name
    AND s.owner_id = verify.owner_id INTO v_secret;
  IF (v_secret.algo = 'crypt') THEN
    RETURN v_secret_text = crypt(verify.value::bytea::text, v_secret_text);
  ELSIF (v_secret.algo = 'pgp') THEN
    RETURN verify.value = v_secret_text;
  END IF;
  RETURN verify.value = v_secret_text;
END
$$
LANGUAGE 'plpgsql'
STABLE;
GRANT EXECUTE ON FUNCTION "dashboard_encrypted".verify TO authenticated;
COMMIT;
