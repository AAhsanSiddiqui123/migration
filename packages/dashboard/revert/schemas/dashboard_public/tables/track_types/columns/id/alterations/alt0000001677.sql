-- Revert: schemas/dashboard_public/tables/track_types/columns/id/alterations/alt0000001677 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_types 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

