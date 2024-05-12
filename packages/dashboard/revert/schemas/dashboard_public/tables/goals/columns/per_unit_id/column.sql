-- Revert: schemas/dashboard_public/tables/goals/columns/per_unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN per_unit_id;
COMMIT;  

