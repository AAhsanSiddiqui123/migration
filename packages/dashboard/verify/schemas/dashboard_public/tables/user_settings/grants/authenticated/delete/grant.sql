-- Verify: schemas/dashboard_public/tables/user_settings/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_settings', 'delete', 'authenticated');
COMMIT;  

