-- Revert: schemas/dashboard_public/tables/locations/columns/id/alterations/alt0000000623 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

