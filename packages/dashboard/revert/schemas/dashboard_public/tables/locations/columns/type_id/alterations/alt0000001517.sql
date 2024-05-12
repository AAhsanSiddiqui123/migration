-- Revert: schemas/dashboard_public/tables/locations/columns/type_id/alterations/alt0000001517 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations 
    ALTER COLUMN type_id DROP NOT NULL;


COMMIT;  

