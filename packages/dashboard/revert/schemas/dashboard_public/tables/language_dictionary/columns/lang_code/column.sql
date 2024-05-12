-- Revert: schemas/dashboard_public/tables/language_dictionary/columns/lang_code/column from pg

BEGIN;


ALTER TABLE "dashboard_public".language_dictionary DROP COLUMN lang_code;
COMMIT;  

