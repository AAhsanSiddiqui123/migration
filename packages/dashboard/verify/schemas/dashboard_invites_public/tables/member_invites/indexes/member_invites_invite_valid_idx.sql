-- Verify: schemas/dashboard_invites_public/tables/member_invites/indexes/member_invites_invite_valid_idx on pg

BEGIN;
SELECT verify_index('dashboard_invites_public.member_invites', 'member_invites_invite_valid_idx');
COMMIT;  

