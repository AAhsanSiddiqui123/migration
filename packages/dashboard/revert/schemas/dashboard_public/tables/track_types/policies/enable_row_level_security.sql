-- Revert: schemas/dashboard_public/tables/track_types/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".track_types
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

