-- Revert: schemas/dashboard_public/tables/goal_explanations/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

