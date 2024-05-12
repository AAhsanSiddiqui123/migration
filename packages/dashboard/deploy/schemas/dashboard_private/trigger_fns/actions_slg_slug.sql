-- Deploy: schemas/dashboard_private/trigger_fns/actions_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".actions_slg_slug ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  new.slug = inflection.slugify(new.slug);
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
