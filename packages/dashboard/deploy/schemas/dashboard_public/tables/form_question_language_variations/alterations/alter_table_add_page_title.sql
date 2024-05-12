-- Deploy schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_page_title to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations
    ADD COLUMN page_title text NULL;

COMMIT;
