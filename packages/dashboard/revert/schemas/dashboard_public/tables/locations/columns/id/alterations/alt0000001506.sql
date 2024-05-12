-- Revert: schemas/dashboard_public/tables/locations/columns/id/alterations/alt0000001506 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

