-- Revert schemas/dashboard_public/tables/tracks/alterations/alter_table_add_is_bound from pg

BEGIN;


ALTER TABLE dashboard_public.tracks
    DROP COLUMN is_bounds;

ALTER TABLE dashboard_public.tracks
    ADD COLUMN is_bounds boolean GENERATED ALWAYS AS (CASE WHEN (bounds IS NULL) THEN false ELSE true END) STORED;

COMMIT;
