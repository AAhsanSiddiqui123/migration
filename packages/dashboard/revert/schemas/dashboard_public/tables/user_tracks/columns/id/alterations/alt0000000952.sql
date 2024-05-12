-- Revert: schemas/dashboard_public/tables/user_tracks/columns/id/alterations/alt0000000952 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

