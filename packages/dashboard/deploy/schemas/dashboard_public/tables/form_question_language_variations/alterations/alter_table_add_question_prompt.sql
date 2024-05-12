-- Deploy schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_question_prompt to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations
    ADD COLUMN question_prompt text NULL;

COMMIT;
