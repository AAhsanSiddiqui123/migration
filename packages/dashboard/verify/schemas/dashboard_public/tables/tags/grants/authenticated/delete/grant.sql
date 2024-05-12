-- Verify: schemas/dashboard_public/tables/tags/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.tags', 'delete', 'authenticated');
COMMIT;  

