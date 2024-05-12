-- Deploy: schemas/dashboard_private/trigger_fns/impact_language_variations_denorm_impact_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".impact_language_variations_denorm_impact_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  IF (NEW.impact_id IS NOT NULL) THEN
   SELECT ref.owner_id FROM "dashboard_public".impacts AS ref WHERE ref.id = new.impact_id
   INTO new.owner_id;
  END IF;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
