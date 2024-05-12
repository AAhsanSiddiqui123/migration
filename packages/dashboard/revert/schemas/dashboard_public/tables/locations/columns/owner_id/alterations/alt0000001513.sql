-- Revert: schemas/dashboard_public/tables/locations/columns/owner_id/alterations/alt0000001513 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

