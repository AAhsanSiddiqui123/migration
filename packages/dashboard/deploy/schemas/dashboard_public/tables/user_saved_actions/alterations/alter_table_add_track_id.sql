-- Deploy schemas/dashboard_public/tables/user_saved_actions/alterations/alter_table_add_track_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_saved_actions/table

BEGIN;

ALTER TABLE dashboard_public.user_saved_actions
    ADD COLUMN track_id uuid NULL;

COMMIT;
