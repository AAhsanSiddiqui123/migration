-- Deploy: schemas/dashboard_public/tables/tracks/indexes/tracks_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/owner_id/column

BEGIN;
CREATE INDEX tracks_owner_id_idx ON "dashboard_public".tracks (owner_id);
COMMIT;
