-- Deploy: schemas/dashboard_public/tables/group_goals/constraints/group_goals_per_unit_id_fkey/alterations/alt0000001151 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/constraints/group_goals_per_unit_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT group_goals_per_unit_id_fkey ON "dashboard_public".group_goals IS E'@omit manyToMany';
COMMIT;
