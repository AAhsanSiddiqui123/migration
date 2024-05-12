-- Deploy: schemas/dashboard_public/tables/user_messages/triggers/user_messages_sender_id_owned_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table

BEGIN;
CREATE TRIGGER user_messages_sender_id_owned_tg 
 AFTER UPDATE ON "dashboard_public".user_messages 
 FOR EACH ROW 
 WHEN (NEW.sender_id <> jwt_public.current_user_id() AND OLD.content IS DISTINCT FROM NEW.content) 
 EXECUTE PROCEDURE utils.throw ( 'OWNED_PROPS', 'sender_id' );
COMMIT;
