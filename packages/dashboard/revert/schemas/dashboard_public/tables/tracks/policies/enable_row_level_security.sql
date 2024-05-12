-- Revert: schemas/dashboard_public/tables/tracks/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

