-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks DROP COLUMN owner_id;
COMMIT;  

