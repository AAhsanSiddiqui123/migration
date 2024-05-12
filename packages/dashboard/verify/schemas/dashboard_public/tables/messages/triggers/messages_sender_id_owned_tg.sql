-- Verify: schemas/dashboard_public/tables/messages/triggers/messages_sender_id_owned_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.messages_sender_id_owned_tg');
COMMIT;  

