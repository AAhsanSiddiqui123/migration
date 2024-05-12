-- Revert: schemas/dashboard_public/tables/track_actions/columns/id/alterations/alt0000000937 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

