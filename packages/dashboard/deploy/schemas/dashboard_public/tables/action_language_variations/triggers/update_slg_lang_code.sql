-- Deploy: schemas/dashboard_public/tables/action_language_variations/triggers/update_slg_lang_code to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table
-- requires: schemas/dashboard_private/trigger_fns/action_language_variations_slg_lang_code

BEGIN;
CREATE TRIGGER update_slg_lang_code 
 BEFORE UPDATE ON "dashboard_public".action_language_variations 
 FOR EACH ROW 
 WHEN (OLD.lang_code IS DISTINCT FROM NEW.lang_code) 
 EXECUTE PROCEDURE "dashboard_private".action_language_variations_slg_lang_code ( );
COMMIT;
