-- Revert schemas/dashboard_public/tables/user_saved_actions/alterations/add_foreign_key_track_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_saved_actions
    DROP CONSTRAINT fk_dashboard_public_user_saved_actions_track_id;

COMMIT;
