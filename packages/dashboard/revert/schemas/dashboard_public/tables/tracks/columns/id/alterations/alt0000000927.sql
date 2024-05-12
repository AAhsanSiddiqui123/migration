-- Revert: schemas/dashboard_public/tables/tracks/columns/id/alterations/alt0000000927 from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

