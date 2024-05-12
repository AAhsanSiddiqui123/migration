-- Revert: schemas/dashboard_public/tables/track_actions/columns/action_id/alterations/alt0000000943 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

