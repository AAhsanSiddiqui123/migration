-- Revert: schemas/dashboard_public/tables/form_types/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".form_types
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

