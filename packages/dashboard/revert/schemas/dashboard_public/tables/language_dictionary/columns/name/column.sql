-- Revert: schemas/dashboard_public/tables/language_dictionary/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".language_dictionary DROP COLUMN name;
COMMIT;  

