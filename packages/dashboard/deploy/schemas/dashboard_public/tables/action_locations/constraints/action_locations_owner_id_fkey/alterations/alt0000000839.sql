-- Deploy: schemas/dashboard_public/tables/action_locations/constraints/action_locations_owner_id_fkey/alterations/alt0000000839 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/constraints/action_locations_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT action_locations_owner_id_fkey ON "dashboard_public".action_locations IS E'@omit manyToMany';
COMMIT;
