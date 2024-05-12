-- Deploy: schemas/dashboard_public/tables/goal_explanations/indexes/goal_explanations_goal_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table
-- requires: schemas/dashboard_public/tables/goal_explanations/columns/goal_id/column

BEGIN;
CREATE INDEX goal_explanations_goal_id_idx ON "dashboard_public".goal_explanations (goal_id);
COMMIT;
