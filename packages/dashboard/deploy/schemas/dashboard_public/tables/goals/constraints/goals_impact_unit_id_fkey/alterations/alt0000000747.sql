-- Deploy: schemas/dashboard_public/tables/goals/constraints/goals_impact_unit_id_fkey/alterations/alt0000000747 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/constraints/goals_impact_unit_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT goals_impact_unit_id_fkey ON "dashboard_public".goals IS E'@omit manyToMany';
COMMIT;
