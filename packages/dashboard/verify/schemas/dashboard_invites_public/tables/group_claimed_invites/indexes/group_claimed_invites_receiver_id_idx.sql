-- Verify: schemas/dashboard_invites_public/tables/group_claimed_invites/indexes/group_claimed_invites_receiver_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_invites_public.group_claimed_invites', 'group_claimed_invites_receiver_id_idx');
COMMIT;  

