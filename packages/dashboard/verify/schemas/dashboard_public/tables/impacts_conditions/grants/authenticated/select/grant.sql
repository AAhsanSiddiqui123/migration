-- Verify: schemas/dashboard_public/tables/impacts_conditions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.impacts_conditions', 'select', 'authenticated');
COMMIT;  

