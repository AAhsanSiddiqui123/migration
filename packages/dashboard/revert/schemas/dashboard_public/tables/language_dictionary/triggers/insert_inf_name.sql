-- Revert: schemas/dashboard_public/tables/language_dictionary/triggers/insert_inf_name from pg

BEGIN;
DROP TRIGGER insert_inf_name ON "dashboard_public".language_dictionary;
COMMIT;  

