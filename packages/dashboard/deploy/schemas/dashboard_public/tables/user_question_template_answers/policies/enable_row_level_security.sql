-- Deploy schemas/dashboard_public/tables/user_question_template_answers/policies/enable_row_level_security to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_template_answers/table

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers
    ENABLE ROW LEVEL SECURITY;

COMMIT;
