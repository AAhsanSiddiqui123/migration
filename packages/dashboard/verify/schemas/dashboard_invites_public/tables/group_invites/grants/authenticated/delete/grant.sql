-- Verify: schemas/dashboard_invites_public/tables/group_invites/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_invites_public.group_invites', 'delete', 'authenticated');
COMMIT;  

