-- Deploy: schemas/dashboard_public/tables/locations/constraints/locations_type_id_fkey/alterations/alt0000001518 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/constraints/locations_type_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT locations_type_id_fkey ON "dashboard_public".locations IS E'@omit manyToMany';
COMMIT;
