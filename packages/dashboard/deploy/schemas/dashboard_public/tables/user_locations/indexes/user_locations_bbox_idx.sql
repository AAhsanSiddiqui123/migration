-- Deploy: schemas/dashboard_public/tables/user_locations/indexes/user_locations_bbox_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table
-- requires: schemas/dashboard_public/tables/user_locations/columns/bbox/column

BEGIN;
CREATE INDEX user_locations_bbox_idx ON "dashboard_public".user_locations USING GIST (bbox);
COMMIT;
