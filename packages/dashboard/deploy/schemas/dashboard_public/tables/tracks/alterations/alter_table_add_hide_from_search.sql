-- Deploy schemas/dashboard_public/tables/tracks/alterations/alter_table_add_hide_from_search to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;

ALTER TABLE dashboard_public.tracks
    ADD COLUMN hide_from_search boolean DEFAULT false;

COMMIT;
