-- Revert: schemas/dashboard_status_public/tables/app_steps/table from pg

BEGIN;
DROP TABLE "dashboard_status_public".app_steps;
COMMIT;  

