-- Revert: schemas/dashboard_public/tables/goals/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN name;
COMMIT;  

