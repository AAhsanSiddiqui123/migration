-- Deploy: schemas/dashboard_public/tables/group_goals/indexes/group_goals_impact_unit_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table
-- requires: schemas/dashboard_public/tables/group_goals/columns/impact_unit_id/column

BEGIN;
CREATE INDEX group_goals_impact_unit_id_idx ON "dashboard_public".group_goals (impact_unit_id);
COMMIT;
