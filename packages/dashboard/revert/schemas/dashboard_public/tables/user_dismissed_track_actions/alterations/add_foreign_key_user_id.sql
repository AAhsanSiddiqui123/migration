-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/add_foreign_key_user_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions
    DROP CONSTRAINT fk_dashboard_public_user_dismissed_track_actions_user_id;

COMMIT;
