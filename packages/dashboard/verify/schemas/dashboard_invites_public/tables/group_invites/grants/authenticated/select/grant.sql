-- Verify: schemas/dashboard_invites_public/tables/group_invites/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_invites_public.group_invites', 'select', 'authenticated');
COMMIT;  

