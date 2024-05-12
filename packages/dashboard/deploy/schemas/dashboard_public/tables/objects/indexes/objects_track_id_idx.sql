-- Deploy: schemas/dashboard_public/tables/objects/indexes/objects_track_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/objects/columns/track_id/column

BEGIN;
CREATE INDEX objects_track_id_idx ON "dashboard_public".objects (track_id);
COMMIT;
