-- Deploy schemas/dashboard_public/tables/tracks/alterations/alter_table_add_is_bounds to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;

ALTER TABLE dashboard_public.tracks
    ADD COLUMN is_bounds boolean GENERATED ALWAYS AS (CASE WHEN (bounds IS NULL) THEN false ELSE true END) STORED;

COMMIT;
