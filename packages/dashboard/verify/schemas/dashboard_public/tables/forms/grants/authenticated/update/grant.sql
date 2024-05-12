-- Verify: schemas/dashboard_public/tables/forms/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.forms', 'update', 'authenticated');
COMMIT;  

