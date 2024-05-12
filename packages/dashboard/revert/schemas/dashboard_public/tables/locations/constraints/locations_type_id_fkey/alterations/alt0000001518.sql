-- Revert: schemas/dashboard_public/tables/locations/constraints/locations_type_id_fkey/alterations/alt0000001518 from pg

BEGIN;
COMMENT ON CONSTRAINT locations_type_id_fkey ON "dashboard_public".locations IS NULL;
COMMIT;  

