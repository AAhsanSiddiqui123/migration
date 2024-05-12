-- Deploy dashboard:schemas/dashboard_public/tables/user_dismissed_track_actions/indexes/user_dismissed_track_actions_user_id_track_action_id_unique_idx to pg

BEGIN;

ALTER TABLE "dashboard_public".user_dismissed_track_actions
    ADD CONSTRAINT user_dismissed_track_actions_user_id_track_action_id_unique_idx UNIQUE (user_id,track_action_id);
COMMIT;
