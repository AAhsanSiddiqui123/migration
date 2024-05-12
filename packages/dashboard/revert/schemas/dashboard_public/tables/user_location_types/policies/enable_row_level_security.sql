-- Revert: schemas/dashboard_public/tables/user_location_types/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_location_types
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

