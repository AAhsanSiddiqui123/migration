-- Deploy: schemas/dashboard_public/tables/tracks/indexes/tracks_is_published_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/is_published/column

BEGIN;
CREATE INDEX tracks_is_published_idx ON "dashboard_public".tracks (is_published);
COMMIT;
