-- Deploy: schemas/dashboard_public/tables/user_tracks/indexes/user_tracks_track_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table
-- requires: schemas/dashboard_public/tables/user_tracks/columns/track_id/column

BEGIN;
CREATE INDEX user_tracks_track_id_idx ON "dashboard_public".user_tracks (track_id);
COMMIT;
