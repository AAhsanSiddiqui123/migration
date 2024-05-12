-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/columns/object_type_value_id/alterations/alt0000001689 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks 
    ALTER COLUMN object_type_value_id DROP NOT NULL;


COMMIT;  

