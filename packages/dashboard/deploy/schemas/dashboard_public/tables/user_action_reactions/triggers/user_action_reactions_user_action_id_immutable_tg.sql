-- Deploy: schemas/dashboard_public/tables/user_action_reactions/triggers/user_action_reactions_user_action_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table

BEGIN;
CREATE TRIGGER user_action_reactions_user_action_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".user_action_reactions 
 FOR EACH ROW 
 WHEN (OLD.user_action_id IS DISTINCT FROM NEW.user_action_id AND old.user_action_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'user_action_id' );
COMMIT;
