-- Revert: schemas/dashboard_public/tables/track_locations/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

