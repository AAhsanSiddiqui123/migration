-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limit_defaults DROP COLUMN id;
COMMIT;  

