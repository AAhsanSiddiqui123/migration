-- Deploy: schemas/dashboard_public/tables/user_settings/triggers/update_slg_lang_code to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_private/trigger_fns/user_settings_slg_lang_code

BEGIN;
CREATE TRIGGER update_slg_lang_code 
 BEFORE UPDATE ON "dashboard_public".user_settings 
 FOR EACH ROW 
 WHEN (OLD.lang_code IS DISTINCT FROM NEW.lang_code) 
 EXECUTE PROCEDURE "dashboard_private".user_settings_slg_lang_code ( );
COMMIT;
