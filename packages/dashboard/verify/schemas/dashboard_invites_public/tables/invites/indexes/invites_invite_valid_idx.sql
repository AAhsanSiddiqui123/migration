-- Verify: schemas/dashboard_invites_public/tables/invites/indexes/invites_invite_valid_idx on pg

BEGIN;
SELECT verify_index('dashboard_invites_public.invites', 'invites_invite_valid_idx');
COMMIT;  

