-- Verify: schemas/dashboard_public/tables/objects/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.objects', 'delete', 'authenticated');
COMMIT;  

