-- Deploy schemas/dashboard_public/tables/user_action_weeks/alterations/alter_table_add_track_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks
    ADD COLUMN track_id uuid NOT NULL;

COMMIT;
