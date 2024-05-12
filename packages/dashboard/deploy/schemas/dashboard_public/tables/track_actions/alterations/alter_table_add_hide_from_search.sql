-- Deploy schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_hide_from_search to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;

ALTER TABLE dashboard_public.track_actions
    ADD COLUMN hide_from_search boolean DEFAULT false;

COMMIT;
