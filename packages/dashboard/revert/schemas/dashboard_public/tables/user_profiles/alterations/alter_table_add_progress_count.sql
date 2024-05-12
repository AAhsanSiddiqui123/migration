-- Revert schemas/dashboard_public/tables/user_profiles/alterations/alter_table_add_progress_count from pg

BEGIN;

ALTER TABLE dashboard_public.user_profiles
    DROP COLUMN progress_count;

COMMIT;
