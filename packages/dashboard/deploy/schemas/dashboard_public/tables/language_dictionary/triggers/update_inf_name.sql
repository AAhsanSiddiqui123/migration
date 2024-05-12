-- Deploy: schemas/dashboard_public/tables/language_dictionary/triggers/update_inf_name to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table
-- requires: schemas/dashboard_private/trigger_fns/language_dictionary_inf_name

BEGIN;
CREATE TRIGGER update_inf_name 
 BEFORE UPDATE ON "dashboard_public".language_dictionary 
 FOR EACH ROW 
 WHEN (OLD.name IS DISTINCT FROM NEW.name) 
 EXECUTE PROCEDURE "dashboard_private".language_dictionary_inf_name ( );
COMMIT;
