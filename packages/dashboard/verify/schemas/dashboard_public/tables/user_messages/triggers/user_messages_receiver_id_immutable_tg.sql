-- Verify: schemas/dashboard_public/tables/user_messages/triggers/user_messages_receiver_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.user_messages_receiver_id_immutable_tg');
COMMIT;  

