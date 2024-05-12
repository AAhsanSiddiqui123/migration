-- Revert schemas/dashboard_public/tables/tracks/alterations/alter_table_add_hide_from_search from pg

BEGIN;

ALTER TABLE dashboard_public.tracks
    DROP COLUMN hide_from_search;

COMMIT;
