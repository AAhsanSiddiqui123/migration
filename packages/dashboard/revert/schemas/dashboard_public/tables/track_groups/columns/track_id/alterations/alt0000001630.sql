-- Revert: schemas/dashboard_public/tables/track_groups/columns/track_id/alterations/alt0000001630 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_groups 
    ALTER COLUMN track_id DROP NOT NULL;


COMMIT;  

