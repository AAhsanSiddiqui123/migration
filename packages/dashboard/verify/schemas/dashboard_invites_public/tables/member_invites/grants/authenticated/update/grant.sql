-- Verify: schemas/dashboard_invites_public/tables/member_invites/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_invites_public.member_invites', 'update', 'authenticated');
COMMIT;  

