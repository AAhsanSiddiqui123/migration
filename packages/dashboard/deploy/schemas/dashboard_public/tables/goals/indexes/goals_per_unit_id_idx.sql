-- Deploy: schemas/dashboard_public/tables/goals/indexes/goals_per_unit_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/goals/columns/per_unit_id/column

BEGIN;
CREATE INDEX goals_per_unit_id_idx ON "dashboard_public".goals (per_unit_id);
COMMIT;
