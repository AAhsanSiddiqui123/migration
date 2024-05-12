-- Verify: schemas/dashboard_public/tables/impacts_conditions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.impacts_conditions', 'update', 'authenticated');
COMMIT;  

