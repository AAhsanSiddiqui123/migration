-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/table from pg

BEGIN;
DROP TABLE "dashboard_limits_public".app_limit_defaults;
COMMIT;  

