-- Deploy: schemas/dashboard_permissions_public/procedures/group_member_permissions_get_by_mask/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema

BEGIN;

CREATE FUNCTION "dashboard_permissions_public".group_member_permissions_get_by_mask (mask bit varying)
  RETURNS SETOF "dashboard_permissions_public".group_member_permissions
AS $CODEZ$
    SELECT * FROM 
      "dashboard_permissions_public".group_member_permissions
    WHERE bitstr & "dashboard_permissions_public".group_member_permissions_get_padded_mask(mask) = bitstr;
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "dashboard_permissions_public".group_member_permissions_get_by_mask TO authenticated;
COMMIT;
