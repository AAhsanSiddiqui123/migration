-- Deploy: schemas/dashboard_public/tables/action_questions/triggers/_000000000_ensure_insert_action_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/action_questions/table
-- requires: schemas/dashboard_private/trigger_fns/action_questions_denorm_action_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_action_id 
 BEFORE INSERT ON "dashboard_public".action_questions 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".action_questions_denorm_action_id ( );
COMMIT;
