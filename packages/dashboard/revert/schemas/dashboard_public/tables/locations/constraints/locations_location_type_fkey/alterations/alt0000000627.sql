-- Revert: schemas/dashboard_public/tables/locations/constraints/locations_location_type_fkey/alterations/alt0000000627 from pg

BEGIN;
COMMENT ON CONSTRAINT locations_location_type_fkey ON "dashboard_public".locations IS NULL;
COMMIT;  

