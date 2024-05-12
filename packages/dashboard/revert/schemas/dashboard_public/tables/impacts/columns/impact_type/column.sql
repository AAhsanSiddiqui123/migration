-- Revert: schemas/dashboard_public/tables/impacts/columns/impact_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN impact_type;
COMMIT;  

