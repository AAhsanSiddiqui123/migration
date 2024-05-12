-- Revert: schemas/dashboard_public/tables/user_locations/columns/kind/alterations/alt0000000633 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_locations.kind IS NULL;
COMMIT;  

