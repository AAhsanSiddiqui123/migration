-- Verify: schemas/dashboard_invites_public/tables/member_claimed_invites/indexes/member_claimed_invites_receiver_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_invites_public.member_claimed_invites', 'member_claimed_invites_receiver_id_idx');
COMMIT;  

