-- Deploy: schemas/dashboard_private/trigger_fns/goals_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".goals_slg_slug ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  new.slug = inflection.slugify(new.slug);
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
