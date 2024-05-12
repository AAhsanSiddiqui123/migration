-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

