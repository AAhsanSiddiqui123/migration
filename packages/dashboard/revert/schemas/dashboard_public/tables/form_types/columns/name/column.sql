-- Revert: schemas/dashboard_public/tables/form_types/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_types DROP COLUMN name;
COMMIT;  

