-- Revert: schemas/dashboard_public/tables/user_tracks/columns/user_id/alterations/alt0000000955 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks 
    ALTER COLUMN user_id DROP NOT NULL;


COMMIT;  

