-- Revert: schemas/dashboard_memberships_public/tables/app_grants/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".app_grants;
COMMIT;  

