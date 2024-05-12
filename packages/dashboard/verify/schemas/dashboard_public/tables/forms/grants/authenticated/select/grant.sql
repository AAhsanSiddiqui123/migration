-- Verify: schemas/dashboard_public/tables/forms/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.forms', 'select', 'authenticated');
COMMIT;  

