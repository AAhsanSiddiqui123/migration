-- Revert: schemas/dashboard_public/tables/track_actions/constraints/track_actions_action_id_fkey/alterations/alt0000000944 from pg

BEGIN;
COMMENT ON CONSTRAINT track_actions_action_id_fkey ON "dashboard_public".track_actions IS NULL;
COMMIT;  

