-- Deploy: schemas/dashboard_roles_public/procedures/logout/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table

BEGIN;

CREATE FUNCTION "dashboard_roles_public".logout ()
  RETURNS void
  AS $$
DECLARE
  v_token_id uuid = jwt_private.current_token_id();
BEGIN
  IF (v_token_id IS NOT NULL) THEN 
    DELETE FROM "dashboard_roles_private".api_tokens t
      WHERE t.id = v_token_id;
  END IF;
END;
$$
LANGUAGE plpgsql
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "dashboard_roles_public".logout TO authenticated;
COMMIT;
