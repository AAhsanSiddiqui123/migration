-- Deploy: schemas/dashboard_public/tables/global_languages/triggers/insert_slg_lang_code to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/global_languages/table
-- requires: schemas/dashboard_private/trigger_fns/global_languages_slg_lang_code

BEGIN;
CREATE TRIGGER insert_slg_lang_code 
 BEFORE INSERT ON "dashboard_public".global_languages 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".global_languages_slg_lang_code ( );
COMMIT;
