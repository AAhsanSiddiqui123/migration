-- Deploy: schemas/dashboard_public/tables/user_action_items/triggers/user_action_items_user_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table

BEGIN;
CREATE TRIGGER user_action_items_user_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".user_action_items 
 FOR EACH ROW 
 WHEN (OLD.user_id IS DISTINCT FROM NEW.user_id AND old.user_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'user_id' );
COMMIT;
