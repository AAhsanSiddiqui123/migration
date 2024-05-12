-- Revert: schemas/dashboard_public/tables/track_actions/constraints/track_actions_track_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions 
    DROP CONSTRAINT track_actions_track_id_fkey;

COMMIT;  

