-- Verify: schemas/dashboard_public/tables/user_messages/indexes/user_messages_receiver_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_messages', 'user_messages_receiver_id_idx');
COMMIT;  

