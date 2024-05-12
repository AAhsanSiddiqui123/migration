-- Revert: schemas/dashboard_public/tables/tracks/columns/owner_id/alterations/alt0000000933 from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

