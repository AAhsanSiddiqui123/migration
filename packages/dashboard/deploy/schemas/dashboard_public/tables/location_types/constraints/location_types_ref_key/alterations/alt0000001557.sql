-- Deploy: schemas/dashboard_public/tables/location_types/constraints/location_types_ref_key/alterations/alt0000001557 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/constraints/location_types_ref_key/constraint

BEGIN;
COMMENT ON CONSTRAINT location_types_ref_key ON "dashboard_public".location_types IS NULL;
COMMIT;
