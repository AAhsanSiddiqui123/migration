-- Revert: schemas/dashboard_public/tables/locations/constraints/locations_owner_id_fkey/alterations/alt0000001515 from pg

BEGIN;
COMMENT ON CONSTRAINT locations_owner_id_fkey ON "dashboard_public".locations IS NULL;
COMMIT;  

