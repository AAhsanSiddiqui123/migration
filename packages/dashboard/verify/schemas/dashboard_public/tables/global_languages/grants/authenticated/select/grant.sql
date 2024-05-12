-- Verify: schemas/dashboard_public/tables/global_languages/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.global_languages', 'select', 'authenticated');
COMMIT;  

