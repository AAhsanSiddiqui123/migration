-- Deploy: schemas/dashboard_public/tables/track_actions/indexes/track_actions_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table
-- requires: schemas/dashboard_public/tables/track_actions/columns/owner_id/column

BEGIN;
CREATE INDEX track_actions_owner_id_idx ON "dashboard_public".track_actions (owner_id);
COMMIT;
