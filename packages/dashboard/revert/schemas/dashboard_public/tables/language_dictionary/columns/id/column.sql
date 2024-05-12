-- Revert: schemas/dashboard_public/tables/language_dictionary/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".language_dictionary DROP COLUMN id;
COMMIT;  

