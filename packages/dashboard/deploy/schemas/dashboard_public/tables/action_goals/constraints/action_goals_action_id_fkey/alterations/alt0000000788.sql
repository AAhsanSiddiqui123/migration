-- Deploy: schemas/dashboard_public/tables/action_goals/constraints/action_goals_action_id_fkey/alterations/alt0000000788 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/constraints/action_goals_action_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT action_goals_action_id_fkey ON "dashboard_public".action_goals IS E'@manyToManyFieldName actions';
COMMIT;
