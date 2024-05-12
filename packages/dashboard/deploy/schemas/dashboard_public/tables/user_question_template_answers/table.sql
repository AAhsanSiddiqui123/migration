-- Deploy schemas/dashboard_public/tables/user_question_template_answers/table to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TABLE dashboard_public.user_question_template_answers (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 ()
  -- fields
);

COMMENT ON TABLE dashboard_public.user_question_template_answers IS 'A comment.';

COMMENT ON COLUMN dashboard_public.user_question_template_answers.id IS 'The primary unique identifier for the user_question_template_answers table.';

COMMIT;
