-- Deploy: schemas/dashboard_public/tables/related_actions/triggers/related_actions_action_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table

BEGIN;
CREATE TRIGGER related_actions_action_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".related_actions 
 FOR EACH ROW 
 WHEN (OLD.action_id IS DISTINCT FROM NEW.action_id AND old.action_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'action_id' );
COMMIT;
