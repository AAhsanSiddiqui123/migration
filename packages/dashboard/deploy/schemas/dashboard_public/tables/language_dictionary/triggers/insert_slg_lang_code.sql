-- Deploy: schemas/dashboard_public/tables/language_dictionary/triggers/insert_slg_lang_code to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table
-- requires: schemas/dashboard_private/trigger_fns/language_dictionary_slg_lang_code

BEGIN;
CREATE TRIGGER insert_slg_lang_code 
 BEFORE INSERT ON "dashboard_public".language_dictionary 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".language_dictionary_slg_lang_code ( );
COMMIT;
