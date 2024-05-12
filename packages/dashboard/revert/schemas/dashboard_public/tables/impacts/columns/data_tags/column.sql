-- Revert: schemas/dashboard_public/tables/impacts/columns/data_tags/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN data_tags;
COMMIT;  

