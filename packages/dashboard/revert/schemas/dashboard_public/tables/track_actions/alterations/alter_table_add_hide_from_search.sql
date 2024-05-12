-- Revert schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_hide_from_search from pg

BEGIN;

ALTER TABLE dashboard_public.track_actions
    DROP COLUMN hide_from_search;

COMMIT;
