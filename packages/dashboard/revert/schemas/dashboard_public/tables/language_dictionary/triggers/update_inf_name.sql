-- Revert: schemas/dashboard_public/tables/language_dictionary/triggers/update_inf_name from pg

BEGIN;
DROP TRIGGER update_inf_name ON "dashboard_public".language_dictionary;
COMMIT;  

