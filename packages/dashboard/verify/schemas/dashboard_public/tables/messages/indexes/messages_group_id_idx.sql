-- Verify: schemas/dashboard_public/tables/messages/indexes/messages_group_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.messages', 'messages_group_id_idx');
COMMIT;  

