-- Deploy: schemas/dashboard_public/tables/group_goals/indexes/group_goals_per_unit_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table
-- requires: schemas/dashboard_public/tables/group_goals/columns/per_unit_id/column

BEGIN;
CREATE INDEX group_goals_per_unit_id_idx ON "dashboard_public".group_goals (per_unit_id);
COMMIT;
