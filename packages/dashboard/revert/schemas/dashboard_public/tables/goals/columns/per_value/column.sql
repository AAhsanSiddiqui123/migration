-- Revert: schemas/dashboard_public/tables/goals/columns/per_value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN per_value;
COMMIT;  

