-- Deploy: schemas/dashboard_private/trigger_fns/user_location_types_inf_ref to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".user_location_types_inf_ref ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  new.ref = inflection.upper(inflection.underscore(new.ref));
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
