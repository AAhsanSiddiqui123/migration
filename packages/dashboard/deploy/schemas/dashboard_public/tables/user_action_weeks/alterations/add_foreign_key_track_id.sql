-- Deploy schemas/dashboard_public/tables/user_action_weeks/alterations/add_foreign_key_track_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;


ALTER TABLE dashboard_public.user_action_weeks
    ADD CONSTRAINT fk_dashboard_public_user_action_weeks_track_id
    FOREIGN KEY (track_id)
    REFERENCES dashboard_public.tracks (id)
    ON DELETE CASCADE;


COMMIT;
