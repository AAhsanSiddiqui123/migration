-- Revert schemas/dashboard_public/tables/user_profiles/triggers/temporary_update_users_from_user_profiles from pg

BEGIN;

DROP TRIGGER temporary_update_users_from_user_profiles ON dashboard_public.user_profiles;
DROP FUNCTION dashboard_private.tg_temporary_update_users_from_user_profiles; 

COMMIT;
