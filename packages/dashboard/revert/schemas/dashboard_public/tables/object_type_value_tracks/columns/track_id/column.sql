-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/columns/track_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks DROP COLUMN track_id;
COMMIT;  

