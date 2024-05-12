-- Revert: schemas/dashboard_public/tables/forms/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".forms
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

