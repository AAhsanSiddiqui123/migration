-- Verify: schemas/dashboard_public/tables/data_tags/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.data_tags', 'delete', 'authenticated');
COMMIT;  

