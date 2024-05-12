-- Revert: schemas/dashboard_public/tables/actions/columns/data_tags/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN data_tags;
COMMIT;  

