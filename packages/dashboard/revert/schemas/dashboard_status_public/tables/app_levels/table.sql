-- Revert: schemas/dashboard_status_public/tables/app_levels/table from pg

BEGIN;
DROP TABLE "dashboard_status_public".app_levels;
COMMIT;  

