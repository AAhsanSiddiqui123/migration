-- Revert: schemas/dashboard_public/tables/user_tracks/columns/owner_id/alterations/alt0000000959 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

