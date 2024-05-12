-- Revert: schemas/dashboard_limits_public/tables/app_limits/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limits DROP COLUMN id;
COMMIT;  

