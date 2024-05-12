-- Revert: schemas/dashboard_public/tables/impacts/columns/impact_unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN impact_unit_id;
COMMIT;  

