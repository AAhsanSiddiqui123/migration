-- Verify: schemas/dashboard_public/tables/impacts_conditions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.impacts_conditions', 'delete', 'authenticated');
COMMIT;  

