-- Revert dashboard:schemas/dashboard_public/tables/user_dismissed_track_actions/indexes/user_dismissed_track_actions_user_id_track_action_id_unique_idx from pg

BEGIN;

ALTER TABLE "dashboard_public".user_dismissed_track_actions 
    DROP CONSTRAINT user_dismissed_track_actions_user_id_track_action_id_unique_idx;

COMMIT;
