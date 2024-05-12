-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/columns/track_id/alterations/alt0000001687 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/columns/track_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_tracks 
    ALTER COLUMN track_id SET NOT NULL;
COMMIT;
