-- Verify: schemas/dashboard_invites_public/tables/claimed_invites/indexes/claimed_invites_receiver_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_invites_public.claimed_invites', 'claimed_invites_receiver_id_idx');
COMMIT;  

