-- Deploy: schemas/dashboard_public/tables/user_actions/indexes/user_actions_track_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/user_actions/columns/track_id/column

BEGIN;
CREATE INDEX user_actions_track_id_idx ON "dashboard_public".user_actions (track_id);
COMMIT;
