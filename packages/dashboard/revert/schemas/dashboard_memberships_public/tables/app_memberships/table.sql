-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".app_memberships;
COMMIT;  

