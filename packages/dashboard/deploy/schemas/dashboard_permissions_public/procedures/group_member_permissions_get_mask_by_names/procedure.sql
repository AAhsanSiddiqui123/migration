-- Deploy: schemas/dashboard_permissions_public/procedures/group_member_permissions_get_mask_by_names/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema

BEGIN;

CREATE FUNCTION "dashboard_permissions_public".group_member_permissions_get_mask_by_names (names citext[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      "dashboard_permissions_public".group_member_permissions
    WHERE name = ANY (names);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "dashboard_permissions_public".group_member_permissions_get_mask_by_names TO authenticated;
COMMIT;
