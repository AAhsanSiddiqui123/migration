-- Revert: schemas/dashboard_public/tables/actions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".actions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

