-- Deploy: schemas/dashboard_public/tables/goals/indexes/goals_impact_unit_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/goals/columns/impact_unit_id/column

BEGIN;
CREATE INDEX goals_impact_unit_id_idx ON "dashboard_public".goals (impact_unit_id);
COMMIT;
