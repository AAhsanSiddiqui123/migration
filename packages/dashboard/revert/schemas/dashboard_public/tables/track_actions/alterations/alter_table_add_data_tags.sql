-- Revert schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_data_tags from pg

BEGIN;

ALTER TABLE dashboard_public.track_actions
    DROP COLUMN data_tags;

COMMIT;
