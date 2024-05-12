-- Verify: schemas/dashboard_public/tables/impacts_conditions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.impacts_conditions', 'insert', 'authenticated');
COMMIT;  

