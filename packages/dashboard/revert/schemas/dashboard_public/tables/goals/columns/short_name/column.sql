-- Revert: schemas/dashboard_public/tables/goals/columns/short_name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN short_name;
COMMIT;  

