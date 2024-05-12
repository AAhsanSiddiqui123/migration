-- Verify: schemas/dashboard_public/tables/objects/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.objects', 'select', 'authenticated');
COMMIT;  

