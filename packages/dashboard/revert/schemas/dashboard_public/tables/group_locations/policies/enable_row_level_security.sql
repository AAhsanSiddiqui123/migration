-- Revert: schemas/dashboard_public/tables/group_locations/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

