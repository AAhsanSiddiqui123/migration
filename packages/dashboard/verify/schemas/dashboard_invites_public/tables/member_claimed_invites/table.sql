-- Verify: schemas/dashboard_invites_public/tables/member_claimed_invites/table on pg

BEGIN;
SELECT verify_table('dashboard_invites_public.member_claimed_invites');
COMMIT;  

