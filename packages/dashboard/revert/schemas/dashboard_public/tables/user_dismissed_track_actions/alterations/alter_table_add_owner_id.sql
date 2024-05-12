-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/alter_table_add_owner_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions
    DROP COLUMN owner_id;

COMMIT;
