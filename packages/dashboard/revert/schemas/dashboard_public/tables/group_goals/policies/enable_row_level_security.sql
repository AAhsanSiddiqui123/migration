-- Revert: schemas/dashboard_public/tables/group_goals/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

