-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/alter_table_add_user_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions
    ADD COLUMN user_id uuid NOT NULL;

COMMIT;
