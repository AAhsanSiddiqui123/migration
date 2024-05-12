-- Revert: schemas/dashboard_public/tables/track_actions/columns/track_order/alterations/alt0000000939 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN track_order DROP DEFAULT;

COMMIT;  

