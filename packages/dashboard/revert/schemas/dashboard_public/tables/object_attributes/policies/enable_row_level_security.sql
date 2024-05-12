-- Revert: schemas/dashboard_public/tables/object_attributes/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

