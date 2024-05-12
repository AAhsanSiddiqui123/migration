-- Verify: schemas/dashboard_public/tables/forms/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.forms', 'delete', 'authenticated');
COMMIT;  

