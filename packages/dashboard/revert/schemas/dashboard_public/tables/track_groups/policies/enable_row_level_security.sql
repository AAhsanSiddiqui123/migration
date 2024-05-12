-- Revert: schemas/dashboard_public/tables/track_groups/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".track_groups
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

