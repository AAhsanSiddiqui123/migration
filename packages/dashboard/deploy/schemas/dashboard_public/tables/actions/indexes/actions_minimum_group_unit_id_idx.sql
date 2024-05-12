-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_minimum_group_unit_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/minimum_group_unit_id/column

BEGIN;
CREATE INDEX actions_minimum_group_unit_id_idx ON "dashboard_public".actions (minimum_group_unit_id);
COMMIT;
