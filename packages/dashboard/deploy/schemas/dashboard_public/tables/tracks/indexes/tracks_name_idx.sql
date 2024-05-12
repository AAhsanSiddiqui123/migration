-- Deploy: schemas/dashboard_public/tables/tracks/indexes/tracks_name_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/name/column

BEGIN;
CREATE INDEX tracks_name_idx ON "dashboard_public".tracks (name);
COMMIT;
