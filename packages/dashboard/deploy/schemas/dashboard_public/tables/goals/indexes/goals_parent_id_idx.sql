-- Deploy: schemas/dashboard_public/tables/goals/indexes/goals_parent_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/goals/columns/parent_id/column

BEGIN;
CREATE INDEX goals_parent_id_idx ON "dashboard_public".goals (parent_id);
COMMIT;
