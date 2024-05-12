-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limit_defaults DROP COLUMN name;
COMMIT;  

