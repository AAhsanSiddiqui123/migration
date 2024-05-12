-- Deploy: schemas/dashboard_public/tables/tracks/indexes/tracks_type_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/type_id/column

BEGIN;
CREATE INDEX tracks_type_id_idx ON "dashboard_public".tracks (type_id);
COMMIT;
