-- Deploy: schemas/dashboard_public/tables/tracks/indexes/tracks_bounds_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/bounds/column

BEGIN;
CREATE INDEX tracks_bounds_idx ON "dashboard_public".tracks USING GIST (bounds);
COMMIT;
