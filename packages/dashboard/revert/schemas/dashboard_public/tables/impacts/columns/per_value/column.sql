-- Revert: schemas/dashboard_public/tables/impacts/columns/per_value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN per_value;
COMMIT;  

