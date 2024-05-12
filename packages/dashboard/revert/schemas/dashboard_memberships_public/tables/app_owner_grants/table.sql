-- Revert: schemas/dashboard_memberships_public/tables/app_owner_grants/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".app_owner_grants;
COMMIT;  

