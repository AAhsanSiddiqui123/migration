-- Revert: schemas/dashboard_public/tables/goals/columns/impact_unit_value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN impact_unit_value;
COMMIT;  

