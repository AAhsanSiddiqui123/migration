-- Revert: schemas/dashboard_public/tables/question_values/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

