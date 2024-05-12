-- Deploy: schemas/dashboard_private/trigger_fns/action_impacts_denorm_action_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".action_impacts_denorm_action_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.owner_id FROM "dashboard_public".actions AS ref WHERE ref.id = new.action_id
  INTO new.owner_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
