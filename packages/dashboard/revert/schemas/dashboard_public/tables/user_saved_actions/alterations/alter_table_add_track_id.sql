-- Revert schemas/dashboard_public/tables/user_saved_actions/alterations/alter_table_add_track_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_saved_actions
    DROP COLUMN track_id;

COMMIT;
