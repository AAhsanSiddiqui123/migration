-- Verify: schemas/dashboard_status_public/tables/app_steps/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_status_public.app_steps', 'select', 'authenticated');
COMMIT;  

