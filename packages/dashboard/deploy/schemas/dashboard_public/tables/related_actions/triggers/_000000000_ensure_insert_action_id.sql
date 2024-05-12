-- Deploy: schemas/dashboard_public/tables/related_actions/triggers/_000000000_ensure_insert_action_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/related_actions/table
-- requires: schemas/dashboard_private/trigger_fns/related_actions_denorm_action_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_action_id 
 BEFORE INSERT ON "dashboard_public".related_actions 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".related_actions_denorm_action_id ( );
COMMIT;
