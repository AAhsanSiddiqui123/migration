-- Deploy schemas/dashboard_public/tables/tracks/alterations/alter_table_add_is_bound to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;
ALTER TABLE dashboard_public.tracks DROP COLUMN is_bounds;
ALTER TABLE dashboard_public.tracks
    ADD COLUMN is_bounds boolean DEFAULT false;

COMMIT;
