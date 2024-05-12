-- Deploy schemas/dashboard_public/tables/question_template_language_variations/alterations/alter_table_add_error_text to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_template_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.question_template_language_variations
    ADD COLUMN error_text text NULL;

COMMIT;
