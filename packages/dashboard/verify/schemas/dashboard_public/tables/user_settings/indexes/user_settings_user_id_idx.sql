-- Verify: schemas/dashboard_public/tables/user_settings/indexes/user_settings_user_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_settings', 'user_settings_user_id_idx');
COMMIT;  

