-- Verify: schemas/dashboard_public/tables/groups/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.groups', 'select', 'authenticated');
COMMIT;  

