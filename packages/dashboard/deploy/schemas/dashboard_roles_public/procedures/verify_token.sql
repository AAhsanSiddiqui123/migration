-- Deploy schemas/dashboard_roles_public/procedures/verify_token to pg

-- requires: schemas/dashboard_roles_public/schema

BEGIN;

CREATE OR REPLACE FUNCTION dashboard_roles_public.verify_token(
	owner_id uuid,
	secret_name text,
	value text)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    STABLE SECURITY DEFINER PARALLEL UNSAFE
AS $BODY$

BEGIN
  RETURN dashboard_encrypted.verify(owner_id,secret_name,value);
END
$BODY$;

GRANT EXECUTE ON FUNCTION dashboard_roles_public.verify_token(uuid, text, text) TO anonymous;

COMMIT;
