-- Verify: schemas/dashboard_public/tables/form_types/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.form_types', 'select', 'authenticated');
COMMIT;  

