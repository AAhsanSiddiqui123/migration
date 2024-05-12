-- Revert: schemas/dashboard_public/tables/form_questions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

