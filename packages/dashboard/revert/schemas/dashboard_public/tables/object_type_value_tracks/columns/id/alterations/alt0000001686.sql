-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/columns/id/alterations/alt0000001686 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

