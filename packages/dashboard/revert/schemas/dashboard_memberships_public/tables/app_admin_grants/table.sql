-- Revert: schemas/dashboard_memberships_public/tables/app_admin_grants/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".app_admin_grants;
COMMIT;  

