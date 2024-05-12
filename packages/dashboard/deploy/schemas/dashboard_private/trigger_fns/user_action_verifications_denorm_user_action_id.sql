-- Deploy: schemas/dashboard_private/trigger_fns/user_action_verifications_denorm_user_action_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".user_action_verifications_denorm_user_action_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.user_id,
ref.owner_id,
ref.action_id FROM "dashboard_public".user_actions AS ref WHERE ref.id = new.user_action_id
  INTO new.user_id,
new.owner_id,
new.action_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
