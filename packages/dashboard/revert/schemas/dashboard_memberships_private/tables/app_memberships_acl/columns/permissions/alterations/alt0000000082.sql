-- Revert: schemas/dashboard_memberships_private/tables/app_memberships_acl/columns/permissions/alterations/alt0000000082 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".app_memberships_acl 
    ALTER COLUMN permissions DROP DEFAULT;

COMMIT;  

