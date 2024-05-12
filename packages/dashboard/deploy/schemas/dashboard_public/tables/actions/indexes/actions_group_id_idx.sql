-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_group_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/group_id/column

BEGIN;
CREATE INDEX actions_group_id_idx ON "dashboard_public".actions (group_id);
COMMIT;
