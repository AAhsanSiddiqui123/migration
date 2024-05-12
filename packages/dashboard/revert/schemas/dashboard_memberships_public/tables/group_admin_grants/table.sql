-- Revert: schemas/dashboard_memberships_public/tables/group_admin_grants/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".group_admin_grants;
COMMIT;  

