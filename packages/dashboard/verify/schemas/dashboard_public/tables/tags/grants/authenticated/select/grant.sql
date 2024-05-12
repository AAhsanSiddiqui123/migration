-- Verify: schemas/dashboard_public/tables/tags/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.tags', 'select', 'authenticated');
COMMIT;  

