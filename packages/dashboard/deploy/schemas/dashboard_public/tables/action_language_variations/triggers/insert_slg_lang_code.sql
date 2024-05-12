-- Deploy: schemas/dashboard_public/tables/action_language_variations/triggers/insert_slg_lang_code to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table
-- requires: schemas/dashboard_private/trigger_fns/action_language_variations_slg_lang_code

BEGIN;
CREATE TRIGGER insert_slg_lang_code 
 BEFORE INSERT ON "dashboard_public".action_language_variations 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".action_language_variations_slg_lang_code ( );
COMMIT;
