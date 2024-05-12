-- Verify: schemas/dashboard_public/tables/forms/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.forms', 'insert', 'authenticated');
COMMIT;  

