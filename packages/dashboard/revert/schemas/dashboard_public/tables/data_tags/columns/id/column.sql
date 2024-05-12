-- Revert: schemas/dashboard_public/tables/data_tags/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".data_tags DROP COLUMN id;
COMMIT;  

