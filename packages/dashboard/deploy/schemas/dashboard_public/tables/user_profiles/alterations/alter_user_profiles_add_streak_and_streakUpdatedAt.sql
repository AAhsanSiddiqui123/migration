-- Deploy dashboard:schemas/dashboard_public/tables/user_profiles/alterations/alter_user_profiles_add_streak_and_streak_updated_at to pg
BEGIN;
ALTER TABLE dashboard_public.user_profiles
    ADD COLUMN streak integer NULL,
    ADD COLUMN streak_updated_at text NULL;
COMMIT;