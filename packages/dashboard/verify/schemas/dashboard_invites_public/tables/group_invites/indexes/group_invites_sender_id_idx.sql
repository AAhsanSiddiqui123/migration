-- Verify: schemas/dashboard_invites_public/tables/group_invites/indexes/group_invites_sender_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_invites_public.group_invites', 'group_invites_sender_id_idx');
COMMIT;  

