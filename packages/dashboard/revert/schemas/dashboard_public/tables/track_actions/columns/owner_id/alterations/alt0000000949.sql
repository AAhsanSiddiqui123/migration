-- Revert: schemas/dashboard_public/tables/track_actions/columns/owner_id/alterations/alt0000000949 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

