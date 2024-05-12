-- Deploy: schemas/dashboard_private/trigger_fns/global_languages_slg_lang_code to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".global_languages_slg_lang_code ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  new.lang_code = inflection.slugify(new.lang_code);
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
