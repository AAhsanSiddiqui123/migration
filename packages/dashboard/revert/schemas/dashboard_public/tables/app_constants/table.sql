-- Revert: schemas/dashboard_public/tables/app_constants/table from pg

BEGIN;
DROP TABLE "dashboard_public".app_constants;
COMMIT;  

