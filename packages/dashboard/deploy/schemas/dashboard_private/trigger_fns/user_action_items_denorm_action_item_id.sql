-- Deploy: schemas/dashboard_private/trigger_fns/user_action_items_denorm_action_item_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".user_action_items_denorm_action_item_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  IF (NEW.action_item_id IS NOT NULL) THEN
   SELECT ref.unit_id FROM "dashboard_public".action_items AS ref WHERE ref.id = new.action_item_id
   INTO new.unit_id;
  END IF;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
