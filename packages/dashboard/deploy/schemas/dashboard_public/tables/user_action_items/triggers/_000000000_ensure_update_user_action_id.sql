-- Deploy: schemas/dashboard_public/tables/user_action_items/triggers/_000000000_ensure_update_user_action_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_private/trigger_fns/user_action_items_denorm_user_action_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_user_action_id 
 BEFORE UPDATE ON "dashboard_public".user_action_items 
 FOR EACH ROW 
 WHEN (OLD.user_action_id IS DISTINCT FROM NEW.user_action_id OR OLD.user_id IS DISTINCT FROM NEW.user_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id OR OLD.action_id IS DISTINCT FROM NEW.action_id) 
 EXECUTE PROCEDURE "dashboard_private".user_action_items_denorm_user_action_id ( );
COMMIT;
