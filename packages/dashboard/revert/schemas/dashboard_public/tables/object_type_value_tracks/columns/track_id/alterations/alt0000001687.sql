-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/columns/track_id/alterations/alt0000001687 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks 
    ALTER COLUMN track_id DROP NOT NULL;


COMMIT;  

