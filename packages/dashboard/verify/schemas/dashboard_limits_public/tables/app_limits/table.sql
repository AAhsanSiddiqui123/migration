-- Verify: schemas/dashboard_limits_public/tables/app_limits/table on pg

BEGIN;
SELECT verify_table('dashboard_limits_public.app_limits');
COMMIT;  

