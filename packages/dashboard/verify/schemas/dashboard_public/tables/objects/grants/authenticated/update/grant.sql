-- Verify: schemas/dashboard_public/tables/objects/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.objects', 'update', 'authenticated');
COMMIT;  

