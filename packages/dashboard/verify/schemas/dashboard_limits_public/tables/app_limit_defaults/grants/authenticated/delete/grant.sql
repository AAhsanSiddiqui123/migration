-- Verify: schemas/dashboard_limits_public/tables/app_limit_defaults/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_limits_public.app_limit_defaults', 'delete', 'authenticated');
COMMIT;  

