-- Verify: schemas/dashboard_invites_public/tables/member_invites/table on pg

BEGIN;
SELECT verify_table('dashboard_invites_public.member_invites');
COMMIT;  

