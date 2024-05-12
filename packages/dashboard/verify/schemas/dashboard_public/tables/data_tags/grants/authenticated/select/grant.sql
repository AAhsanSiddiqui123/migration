-- Verify: schemas/dashboard_public/tables/data_tags/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.data_tags', 'select', 'authenticated');
COMMIT;  

