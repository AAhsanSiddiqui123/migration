-- Revert: schemas/dashboard_public/tables/group_locations/constraints/group_locations_owner_id_fkey/alterations/alt0000001138 from pg

BEGIN;
COMMENT ON CONSTRAINT group_locations_owner_id_fkey ON "dashboard_public".group_locations IS NULL;
COMMIT;  

