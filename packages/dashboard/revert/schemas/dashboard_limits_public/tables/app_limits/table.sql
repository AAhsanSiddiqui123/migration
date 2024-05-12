-- Revert: schemas/dashboard_limits_public/tables/app_limits/table from pg

BEGIN;
DROP TABLE "dashboard_limits_public".app_limits;
COMMIT;  

