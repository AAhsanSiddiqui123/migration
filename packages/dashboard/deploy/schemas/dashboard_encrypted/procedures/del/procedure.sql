-- Deploy: schemas/dashboard_encrypted/procedures/del/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/owner_id/column

BEGIN;

CREATE FUNCTION "dashboard_encrypted".del(
  owner_id uuid,
  secret_name text
)
  RETURNS void
  AS $$
BEGIN
  DELETE FROM "dashboard_encrypted".user_encrypted_secrets s
  WHERE s.owner_id = del.owner_id
    AND s.name = del.secret_name;
END
$$
LANGUAGE 'plpgsql'
VOLATILE;
CREATE FUNCTION "dashboard_encrypted".del(
  owner_id uuid,
  secret_names text[]
)
  RETURNS void
  AS $$
BEGIN
  DELETE FROM "dashboard_encrypted".user_encrypted_secrets s
  WHERE s.owner_id = del.owner_id
    AND s.name = ANY(del.secret_names);
END
$$
LANGUAGE 'plpgsql'
VOLATILE;
GRANT EXECUTE ON FUNCTION "dashboard_encrypted".del(uuid,text) TO authenticated;
GRANT EXECUTE ON FUNCTION "dashboard_encrypted".del(uuid,text[]) TO authenticated;
COMMIT;
