-- Deploy: schemas/dashboard_public/tables/impacts/constraints/impacts_impact_unit_id_fkey/alterations/alt0000000721 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/constraints/impacts_impact_unit_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT impacts_impact_unit_id_fkey ON "dashboard_public".impacts IS E'@omit manyToMany';
COMMIT;
