-- Deploy schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_data_tags to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;

ALTER TABLE dashboard_public.track_actions
    ADD COLUMN data_tags citext[] NULL;

COMMIT;
