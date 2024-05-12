-- Deploy: schemas/dashboard_public/tables/global_languages/triggers/global_languages_lang_code_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;
CREATE TRIGGER global_languages_lang_code_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".global_languages 
 FOR EACH ROW 
 WHEN (OLD.lang_code IS DISTINCT FROM NEW.lang_code AND old.lang_code IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'lang_code' );
COMMIT;
