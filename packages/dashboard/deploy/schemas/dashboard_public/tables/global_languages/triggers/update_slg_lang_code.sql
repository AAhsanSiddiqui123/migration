-- Deploy: schemas/dashboard_public/tables/global_languages/triggers/update_slg_lang_code to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/global_languages/table
-- requires: schemas/dashboard_private/trigger_fns/global_languages_slg_lang_code

BEGIN;
CREATE TRIGGER update_slg_lang_code 
 BEFORE UPDATE ON "dashboard_public".global_languages 
 FOR EACH ROW 
 WHEN (OLD.lang_code IS DISTINCT FROM NEW.lang_code) 
 EXECUTE PROCEDURE "dashboard_private".global_languages_slg_lang_code ( );
COMMIT;
