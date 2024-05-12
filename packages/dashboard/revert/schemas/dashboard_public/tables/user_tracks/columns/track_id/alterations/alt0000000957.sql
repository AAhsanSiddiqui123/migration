-- Revert: schemas/dashboard_public/tables/user_tracks/columns/track_id/alterations/alt0000000957 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks 
    ALTER COLUMN track_id DROP NOT NULL;


COMMIT;  

