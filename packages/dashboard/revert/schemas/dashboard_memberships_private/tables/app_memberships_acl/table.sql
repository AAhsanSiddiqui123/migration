-- Revert: schemas/dashboard_memberships_private/tables/app_memberships_acl/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_private".app_memberships_acl;
COMMIT;  

