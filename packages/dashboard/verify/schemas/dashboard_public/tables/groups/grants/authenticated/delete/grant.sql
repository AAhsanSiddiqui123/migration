-- Verify: schemas/dashboard_public/tables/groups/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.groups', 'delete', 'authenticated');
COMMIT;  

