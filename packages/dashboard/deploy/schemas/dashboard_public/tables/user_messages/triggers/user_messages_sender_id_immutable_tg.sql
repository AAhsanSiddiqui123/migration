-- Deploy: schemas/dashboard_public/tables/user_messages/triggers/user_messages_sender_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table

BEGIN;
CREATE TRIGGER user_messages_sender_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".user_messages 
 FOR EACH ROW 
 WHEN (OLD.sender_id IS DISTINCT FROM NEW.sender_id AND old.sender_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'sender_id' );
COMMIT;
