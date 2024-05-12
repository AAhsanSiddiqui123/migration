-- Verify: schemas/dashboard_limits_public/tables/app_limits/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_limits_public.app_limits', 'select', 'authenticated');
COMMIT;  

