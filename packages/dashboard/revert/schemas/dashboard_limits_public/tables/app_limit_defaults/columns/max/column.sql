-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/columns/max/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limit_defaults DROP COLUMN max;
COMMIT;  

