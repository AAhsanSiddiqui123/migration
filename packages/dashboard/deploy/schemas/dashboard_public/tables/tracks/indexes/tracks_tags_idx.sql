-- Deploy: schemas/dashboard_public/tables/tracks/indexes/tracks_tags_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/tags/column

BEGIN;
CREATE INDEX tracks_tags_idx ON "dashboard_public".tracks USING GIN (tags);
COMMIT;
