-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/indexes/object_type_value_tracks_object_type_value_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/columns/object_type_value_id/column

BEGIN;
CREATE INDEX object_type_value_tracks_object_type_value_id_idx ON "dashboard_public".object_type_value_tracks (object_type_value_id);
COMMIT;
