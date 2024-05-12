-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/indexes/object_type_value_tracks_object_type_value_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".object_type_value_tracks_object_type_value_id_idx;
COMMIT;  

