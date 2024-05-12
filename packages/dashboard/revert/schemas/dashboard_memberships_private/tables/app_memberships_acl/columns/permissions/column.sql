-- Revert: schemas/dashboard_memberships_private/tables/app_memberships_acl/columns/permissions/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".app_memberships_acl DROP COLUMN permissions;
COMMIT;  

