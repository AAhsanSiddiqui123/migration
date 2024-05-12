-- Revert: schemas/dashboard_public/tables/impacts/columns/unit_value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN unit_value;
COMMIT;  

