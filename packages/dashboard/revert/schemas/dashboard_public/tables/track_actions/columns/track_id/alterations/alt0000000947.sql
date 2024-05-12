-- Revert: schemas/dashboard_public/tables/track_actions/columns/track_id/alterations/alt0000000947 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions 
    ALTER COLUMN track_id DROP NOT NULL;


COMMIT;  

