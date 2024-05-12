-- Deploy: schemas/dashboard_private/trigger_fns/user_action_reactions_denorm_user_action_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".user_action_reactions_denorm_user_action_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.action_id,
ref.user_id FROM "dashboard_public".user_actions AS ref WHERE ref.id = new.user_action_id
  INTO new.action_id,
new.user_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
