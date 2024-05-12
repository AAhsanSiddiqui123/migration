-- Verify schemas/dashboard_public/tables/user_profiles/triggers/temporary_update_users_from_user_profiles  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_temporary_update_users_from_user_profiles'); 
SELECT verify_trigger ('dashboard_public.temporary_update_users_from_user_profiles');

ROLLBACK;
