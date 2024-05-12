-- Deploy: schemas/dashboard_public/tables/location_types/columns/name/alterations/alt0000001491 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/columns/name/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".location_types.name IS E'e.g. neighborhood, postalcode, locality, venue, etc';
COMMIT;
