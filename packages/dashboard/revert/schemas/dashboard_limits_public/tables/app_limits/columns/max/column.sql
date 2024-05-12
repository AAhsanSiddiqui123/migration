-- Revert: schemas/dashboard_limits_public/tables/app_limits/columns/max/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limits DROP COLUMN max;
COMMIT;  

