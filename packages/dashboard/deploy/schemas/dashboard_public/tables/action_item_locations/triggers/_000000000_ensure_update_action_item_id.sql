-- Deploy: schemas/dashboard_public/tables/action_item_locations/triggers/_000000000_ensure_update_action_item_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table
-- requires: schemas/dashboard_private/trigger_fns/action_item_locations_denorm_action_item_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_action_item_id 
 BEFORE UPDATE ON "dashboard_public".action_item_locations 
 FOR EACH ROW 
 WHEN (OLD.action_item_id IS DISTINCT FROM NEW.action_item_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id OR OLD.action_id IS DISTINCT FROM NEW.action_id) 
 EXECUTE PROCEDURE "dashboard_private".action_item_locations_denorm_action_item_id ( );
COMMIT;
