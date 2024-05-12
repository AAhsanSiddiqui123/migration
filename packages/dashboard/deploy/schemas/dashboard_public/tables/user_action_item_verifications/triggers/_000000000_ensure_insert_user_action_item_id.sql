-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/triggers/_000000000_ensure_insert_user_action_item_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table
-- requires: schemas/dashboard_private/trigger_fns/user_action_item_verifications_denorm_user_action_item_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_user_action_item_id 
 BEFORE INSERT ON "dashboard_public".user_action_item_verifications 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".user_action_item_verifications_denorm_user_action_item_id ( );
COMMIT;
