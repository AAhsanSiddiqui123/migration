-- Verify: schemas/dashboard_public/tables/global_languages/table on pg

BEGIN;
SELECT verify_table('dashboard_public.global_languages');
COMMIT;  

