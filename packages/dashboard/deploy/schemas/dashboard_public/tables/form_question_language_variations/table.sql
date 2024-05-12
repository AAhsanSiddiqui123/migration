-- Deploy schemas/dashboard_public/tables/form_question_language_variations/table to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TABLE dashboard_public.form_question_language_variations (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 ()
  -- fields
);

COMMENT ON TABLE dashboard_public.form_question_language_variations IS 'Form Question Language Variations table.';

COMMENT ON COLUMN dashboard_public.form_question_language_variations.id IS 'The primary unique identifier for the form_question_language_variations table.';

COMMIT;
