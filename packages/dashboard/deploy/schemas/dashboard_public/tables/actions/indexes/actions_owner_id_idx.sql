-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/owner_id/column

BEGIN;
CREATE INDEX actions_owner_id_idx ON "dashboard_public".actions (owner_id);
COMMIT;
