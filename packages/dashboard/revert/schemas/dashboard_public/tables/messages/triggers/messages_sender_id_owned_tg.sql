-- Revert: schemas/dashboard_public/tables/messages/triggers/messages_sender_id_owned_tg from pg

BEGIN;
DROP TRIGGER messages_sender_id_owned_tg ON "dashboard_public".messages;
COMMIT;  

