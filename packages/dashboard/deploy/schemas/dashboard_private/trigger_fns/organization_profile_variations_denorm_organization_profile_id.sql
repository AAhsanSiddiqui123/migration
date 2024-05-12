-- Deploy: schemas/dashboard_private/trigger_fns/organization_profile_variations_denorm_organization_profile_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".organization_profile_variations_denorm_organization_profile_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  IF (NEW.organization_profile_id IS NOT NULL) THEN
   SELECT ref.organization_id FROM "dashboard_public".organization_profiles AS ref WHERE ref.id = new.organization_profile_id
   INTO new.organization_id;
  END IF;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
