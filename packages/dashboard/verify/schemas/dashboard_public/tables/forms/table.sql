-- Verify: schemas/dashboard_public/tables/forms/table on pg

BEGIN;
SELECT verify_table('dashboard_public.forms');
COMMIT;  

