-- Deploy: schemas/dashboard_public/tables/user_settings/triggers/insert_slg_lang_code to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_private/trigger_fns/user_settings_slg_lang_code

BEGIN;
CREATE TRIGGER insert_slg_lang_code 
 BEFORE INSERT ON "dashboard_public".user_settings 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".user_settings_slg_lang_code ( );
COMMIT;
