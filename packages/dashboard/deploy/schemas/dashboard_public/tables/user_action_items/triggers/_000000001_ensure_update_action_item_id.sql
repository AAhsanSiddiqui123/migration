-- Deploy: schemas/dashboard_public/tables/user_action_items/triggers/_000000001_ensure_update_action_item_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_private/trigger_fns/user_action_items_denorm_action_item_id

BEGIN;
CREATE TRIGGER _000000001_ensure_update_action_item_id 
 BEFORE UPDATE ON "dashboard_public".user_action_items 
 FOR EACH ROW 
 WHEN (OLD.action_item_id IS DISTINCT FROM NEW.action_item_id OR OLD.unit_id IS DISTINCT FROM NEW.unit_id) 
 EXECUTE PROCEDURE "dashboard_private".user_action_items_denorm_action_item_id ( );
COMMIT;
