-- Deploy: schemas/dashboard_public/tables/locations/constraints/locations_owner_id_fkey/alterations/alt0000000625 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/constraints/locations_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT locations_owner_id_fkey ON "dashboard_public".locations IS E'@omit manyToMany';
COMMIT;
