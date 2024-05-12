-- Revert: schemas/dashboard_public/tables/location_types/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

