-- Verify: schemas/dashboard_public/tables/tags/table on pg

BEGIN;
SELECT verify_table('dashboard_public.tags');
COMMIT;  

