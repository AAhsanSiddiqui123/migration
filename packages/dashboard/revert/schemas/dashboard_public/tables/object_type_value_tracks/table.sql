-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/table from pg

BEGIN;
DROP TABLE "dashboard_public".object_type_value_tracks;
COMMIT;  

