-- Deploy: schemas/dashboard_public/tables/action_impacts/triggers/_000000000_ensure_update_action_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table
-- requires: schemas/dashboard_private/trigger_fns/action_impacts_denorm_action_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_action_id 
 BEFORE UPDATE ON "dashboard_public".action_impacts 
 FOR EACH ROW 
 WHEN (OLD.action_id IS DISTINCT FROM NEW.action_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
 EXECUTE PROCEDURE "dashboard_private".action_impacts_denorm_action_id ( );
COMMIT;
