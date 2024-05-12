-- Deploy schemas/dashboard_public/tables/user_tracks/alterations/alter_table_add_viewed_at to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table

BEGIN;

ALTER TABLE dashboard_public.user_tracks
    ADD COLUMN viewed_at timestamptz NULL;

COMMIT;
