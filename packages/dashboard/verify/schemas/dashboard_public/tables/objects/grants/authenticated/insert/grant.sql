-- Verify: schemas/dashboard_public/tables/objects/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.objects', 'insert', 'authenticated');
COMMIT;  

