-- Deploy: schemas/dashboard_private/trigger_fns/app_constants_slg_name to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".app_constants_slg_name ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  new.name = inflection.slugify(new.name);
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
