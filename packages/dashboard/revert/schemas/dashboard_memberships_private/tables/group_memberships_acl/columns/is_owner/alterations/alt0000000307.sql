-- Revert: schemas/dashboard_memberships_private/tables/group_memberships_acl/columns/is_owner/alterations/alt0000000307 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".group_memberships_acl 
    ALTER COLUMN is_owner DROP DEFAULT;

COMMIT;  

