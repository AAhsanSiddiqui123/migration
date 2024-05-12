-- Deploy: schemas/dashboard_public/tables/tracks/indexes/tracks_is_private_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/is_private/column

BEGIN;
CREATE INDEX tracks_is_private_idx ON "dashboard_public".tracks (is_private);
COMMIT;
