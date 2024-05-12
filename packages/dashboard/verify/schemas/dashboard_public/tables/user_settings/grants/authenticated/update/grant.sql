-- Verify: schemas/dashboard_public/tables/user_settings/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_settings', 'update', 'authenticated');
COMMIT;  

