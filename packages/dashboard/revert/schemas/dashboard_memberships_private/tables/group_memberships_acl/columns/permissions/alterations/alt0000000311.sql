-- Revert: schemas/dashboard_memberships_private/tables/group_memberships_acl/columns/permissions/alterations/alt0000000311 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".group_memberships_acl 
    ALTER COLUMN permissions DROP DEFAULT;

COMMIT;  

