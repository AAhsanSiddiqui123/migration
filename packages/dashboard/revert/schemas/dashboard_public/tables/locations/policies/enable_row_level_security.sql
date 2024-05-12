-- Revert: schemas/dashboard_public/tables/locations/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".locations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

