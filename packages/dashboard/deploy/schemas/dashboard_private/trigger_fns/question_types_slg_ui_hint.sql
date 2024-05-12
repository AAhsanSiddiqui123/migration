-- Deploy: schemas/dashboard_private/trigger_fns/question_types_slg_ui_hint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".question_types_slg_ui_hint ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  new.ui_hint = inflection.slugify(new.ui_hint);
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
