-- Revert: schemas/dashboard_public/tables/track_actions/constraints/track_actions_owner_id_fkey/alterations/alt0000000946 from pg

BEGIN;
COMMENT ON CONSTRAINT track_actions_owner_id_fkey ON "dashboard_public".track_actions IS NULL;
COMMIT;  

