-- Verify: schemas/dashboard_public/tables/groups/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.groups', 'insert', 'authenticated');
COMMIT;  

