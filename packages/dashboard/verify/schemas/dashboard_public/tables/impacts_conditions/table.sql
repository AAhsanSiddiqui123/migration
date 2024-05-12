-- Verify: schemas/dashboard_public/tables/impacts_conditions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.impacts_conditions');
COMMIT;  

