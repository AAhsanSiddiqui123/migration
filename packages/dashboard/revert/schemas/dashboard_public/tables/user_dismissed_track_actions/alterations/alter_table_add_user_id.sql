-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/alter_table_add_user_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions
    DROP COLUMN user_id;

COMMIT;
