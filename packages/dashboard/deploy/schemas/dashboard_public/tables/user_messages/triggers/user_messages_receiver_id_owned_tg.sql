-- Deploy: schemas/dashboard_public/tables/user_messages/triggers/user_messages_receiver_id_owned_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table

BEGIN;
CREATE TRIGGER user_messages_receiver_id_owned_tg 
 AFTER UPDATE ON "dashboard_public".user_messages 
 FOR EACH ROW 
 WHEN (NEW.receiver_id <> jwt_public.current_user_id() AND (OLD.received IS DISTINCT FROM NEW.received OR OLD.receiver_read IS DISTINCT FROM NEW.receiver_read)) 
 EXECUTE PROCEDURE utils.throw ( 'OWNED_PROPS', 'receiver_id' );
COMMIT;
