-- Deploy: schemas/dashboard_public/tables/action_impacts/indexes/action_impacts_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table
-- requires: schemas/dashboard_public/tables/action_impacts/columns/owner_id/column

BEGIN;
CREATE INDEX action_impacts_owner_id_idx ON "dashboard_public".action_impacts (owner_id);
COMMIT;
