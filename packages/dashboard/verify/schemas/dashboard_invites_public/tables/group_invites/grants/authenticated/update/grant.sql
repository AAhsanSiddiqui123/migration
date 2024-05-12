-- Verify: schemas/dashboard_invites_public/tables/group_invites/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_invites_public.group_invites', 'update', 'authenticated');
COMMIT;  

