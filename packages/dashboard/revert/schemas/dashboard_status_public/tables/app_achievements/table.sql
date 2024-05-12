-- Revert: schemas/dashboard_status_public/tables/app_achievements/table from pg

BEGIN;
DROP TABLE "dashboard_status_public".app_achievements;
COMMIT;  

