-- Revert: schemas/dashboard_public/tables/action_impacts/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

