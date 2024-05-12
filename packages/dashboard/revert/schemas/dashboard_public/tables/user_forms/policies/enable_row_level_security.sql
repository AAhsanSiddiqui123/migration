-- Revert: schemas/dashboard_public/tables/user_forms/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

