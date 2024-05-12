-- Revert: schemas/dashboard_public/tables/group_locations/constraints/group_locations_group_id_fkey/alterations/alt0000001136 from pg

BEGIN;
COMMENT ON CONSTRAINT group_locations_group_id_fkey ON "dashboard_public".group_locations IS NULL;
COMMIT;  

