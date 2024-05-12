-- Revert: schemas/dashboard_public/tables/language_dictionary/table from pg

BEGIN;
DROP TABLE "dashboard_public".language_dictionary;
COMMIT;  

