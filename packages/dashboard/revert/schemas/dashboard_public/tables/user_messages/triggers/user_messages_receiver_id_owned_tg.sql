-- Revert: schemas/dashboard_public/tables/user_messages/triggers/user_messages_receiver_id_owned_tg from pg

BEGIN;
DROP TRIGGER user_messages_receiver_id_owned_tg ON "dashboard_public".user_messages;
COMMIT;  

