-- Verify: schemas/dashboard_invites_public/tables/member_invites/indexes/member_invites_expires_at_idx on pg

BEGIN;
SELECT verify_index('dashboard_invites_public.member_invites', 'member_invites_expires_at_idx');
COMMIT;  

