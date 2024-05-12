-- Revert dashboard:schemas/dashboard_public/tables/user_profiles/alterations/alter_user_profiles_add_streak_and_streak_updated_at from pg
BEGIN;
ALTER TABLE dashboard_public.user_profiles
    DROP COLUMN streak,
    DROP COLUMN streak_updated_at;
COMMIT;