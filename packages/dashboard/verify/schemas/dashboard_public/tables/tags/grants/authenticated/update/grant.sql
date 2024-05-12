-- Verify: schemas/dashboard_public/tables/tags/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.tags', 'update', 'authenticated');
COMMIT;  

