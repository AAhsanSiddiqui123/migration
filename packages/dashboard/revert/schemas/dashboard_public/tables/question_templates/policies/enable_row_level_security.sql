-- Revert: schemas/dashboard_public/tables/question_templates/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

