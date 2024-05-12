-- Verify: schemas/dashboard_public/tables/form_types/table on pg

BEGIN;
SELECT verify_table('dashboard_public.form_types');
COMMIT;  

