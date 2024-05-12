-- Verify: schemas/dashboard_public/tables/user_settings/indexes/user_settings_close_bounds_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_settings', 'user_settings_close_bounds_idx');
COMMIT;  

