-- Revert: schemas/dashboard_public/tables/location_types/columns/name/alterations/alt0000001491 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".location_types.name IS NULL;
COMMIT;  

