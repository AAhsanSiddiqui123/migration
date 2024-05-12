-- Revert: schemas/dashboard_public/tables/action_goals/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

