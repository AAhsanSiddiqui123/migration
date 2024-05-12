-- Revert schemas/dashboard_public/tables/tracks/alterations/alter_table_add_is_bounds from pg

BEGIN;

ALTER TABLE dashboard_public.tracks
    DROP COLUMN is_bounds;

COMMIT;
