-- Deploy: schemas/dashboard_private/trigger_fns/user_action_item_verifications_denorm_user_action_item_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".user_action_item_verifications_denorm_user_action_item_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  SELECT ref.user_id,
ref.owner_id,
ref.action_id,
ref.user_action_id,
ref.action_item_id FROM "dashboard_public".user_action_items AS ref WHERE ref.id = new.user_action_item_id
  INTO new.user_id,
new.owner_id,
new.action_id,
new.user_action_id,
new.action_item_id;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
