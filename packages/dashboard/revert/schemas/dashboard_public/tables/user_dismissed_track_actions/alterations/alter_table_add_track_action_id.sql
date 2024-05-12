-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/alter_table_add_track_action_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions
    DROP COLUMN track_action_id;

COMMIT;
