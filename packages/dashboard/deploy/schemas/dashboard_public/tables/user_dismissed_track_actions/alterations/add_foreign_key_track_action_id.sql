-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/add_foreign_key_track_action_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;


ALTER TABLE dashboard_public.user_dismissed_track_actions
    ADD CONSTRAINT fk_dashboard_public_user_dismissed_track_actions_track_actionid
    FOREIGN KEY (track_action_id)
    REFERENCES dashboard_public.track_actions (id)
    ON DELETE CASCADE;


COMMIT;
