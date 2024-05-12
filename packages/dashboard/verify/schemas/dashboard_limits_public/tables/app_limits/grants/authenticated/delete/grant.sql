-- Verify: schemas/dashboard_limits_public/tables/app_limits/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_limits_public.app_limits', 'delete', 'authenticated');
COMMIT;  

