-- Revert: schemas/dashboard_public/tables/action_questions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

