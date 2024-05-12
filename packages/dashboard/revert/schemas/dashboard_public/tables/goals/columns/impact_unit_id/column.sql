-- Revert: schemas/dashboard_public/tables/goals/columns/impact_unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN impact_unit_id;
COMMIT;  

