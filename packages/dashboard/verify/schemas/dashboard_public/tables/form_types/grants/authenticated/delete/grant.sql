-- Verify: schemas/dashboard_public/tables/form_types/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.form_types', 'delete', 'authenticated');
COMMIT;  

