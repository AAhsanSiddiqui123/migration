-- Revert: schemas/dashboard_public/tables/track_actions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

