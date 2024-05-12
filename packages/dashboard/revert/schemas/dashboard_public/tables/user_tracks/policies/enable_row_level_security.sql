-- Revert: schemas/dashboard_public/tables/user_tracks/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

