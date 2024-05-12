-- Revert: schemas/dashboard_public/tables/goals/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".goals
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

