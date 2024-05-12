-- Revert schemas/dashboard_public/tables/user_question_template_answers/policies/enable_row_level_security from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers
    DISABLE ROW LEVEL SECURITY;

COMMIT;
