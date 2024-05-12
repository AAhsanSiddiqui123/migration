-- Revert: schemas/dashboard_public/tables/object_type_values/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

