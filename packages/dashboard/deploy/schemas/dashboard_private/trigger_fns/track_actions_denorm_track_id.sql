-- Deploy: schemas/dashboard_private/trigger_fns/track_actions_denorm_track_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".track_actions_denorm_track_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.owner_id FROM "dashboard_public".tracks AS ref WHERE ref.id = new.track_id
  INTO new.owner_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
