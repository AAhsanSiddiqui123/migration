-- Verify: schemas/dashboard_public/tables/objects/table on pg

BEGIN;
SELECT verify_table('dashboard_public.objects');
COMMIT;  

