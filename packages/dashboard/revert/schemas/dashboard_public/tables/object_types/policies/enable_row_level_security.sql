-- Revert: schemas/dashboard_public/tables/object_types/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

