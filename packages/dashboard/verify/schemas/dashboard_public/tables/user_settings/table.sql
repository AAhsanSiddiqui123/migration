-- Verify: schemas/dashboard_public/tables/user_settings/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_settings');
COMMIT;  

