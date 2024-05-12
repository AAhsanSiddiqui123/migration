-- Verify: schemas/dashboard_public/tables/message_groups/indexes/message_groups_member_ids_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.message_groups', 'message_groups_member_ids_idx');
COMMIT;  

