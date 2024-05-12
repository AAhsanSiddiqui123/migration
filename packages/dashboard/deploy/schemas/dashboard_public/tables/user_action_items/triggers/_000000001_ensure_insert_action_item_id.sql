-- Deploy: schemas/dashboard_public/tables/user_action_items/triggers/_000000001_ensure_insert_action_item_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_private/trigger_fns/user_action_items_denorm_action_item_id

BEGIN;
CREATE TRIGGER _000000001_ensure_insert_action_item_id 
 BEFORE INSERT ON "dashboard_public".user_action_items 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".user_action_items_denorm_action_item_id ( );
COMMIT;
