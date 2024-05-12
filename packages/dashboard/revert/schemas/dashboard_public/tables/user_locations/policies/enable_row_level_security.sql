-- Revert: schemas/dashboard_public/tables/user_locations/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

