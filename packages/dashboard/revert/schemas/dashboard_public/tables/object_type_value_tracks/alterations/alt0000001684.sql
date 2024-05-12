-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/alterations/alt0000001684 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

