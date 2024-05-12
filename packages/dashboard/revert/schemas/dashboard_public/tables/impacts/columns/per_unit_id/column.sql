-- Revert: schemas/dashboard_public/tables/impacts/columns/per_unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN per_unit_id;
COMMIT;  

