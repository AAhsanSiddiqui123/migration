-- Verify dashboard:schemas/dashboard_public/tables/user_profiles/alterations/alter_user_profiles_add_streak_and_streak_updated_at on pg
BEGIN;
    SELECT streak, streak_updated_at FROM dashboard_public.user_profiles LIMIT 1;
ROLLBACK;