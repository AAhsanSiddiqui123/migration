-- Deploy: schemas/dashboard_public/tables/user_locations/constraints/user_locations_type_id_fkey/alterations/alt0000001566 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/constraints/user_locations_type_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_locations_type_id_fkey ON "dashboard_public".user_locations IS E'@omit manyToMany';
COMMIT;
