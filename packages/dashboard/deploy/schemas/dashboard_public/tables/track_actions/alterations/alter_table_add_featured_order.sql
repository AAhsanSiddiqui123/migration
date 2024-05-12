-- Deploy schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_featured_order to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;

ALTER TABLE dashboard_public.track_actions
    ADD COLUMN featured_order integer NULL;

COMMIT;
