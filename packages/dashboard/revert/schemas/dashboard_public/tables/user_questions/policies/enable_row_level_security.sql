-- Revert: schemas/dashboard_public/tables/user_questions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

