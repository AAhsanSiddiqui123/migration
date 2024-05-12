-- Deploy schemas/dashboard_public/tables/form_question_language_variations/policies/enable_row_level_security to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;
