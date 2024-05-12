-- Deploy: schemas/dashboard_public/tables/user_actions/indexes/user_actions_location_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/user_actions/columns/location/column

BEGIN;
CREATE INDEX user_actions_location_idx ON "dashboard_public".user_actions USING GIST (location);
COMMIT;
