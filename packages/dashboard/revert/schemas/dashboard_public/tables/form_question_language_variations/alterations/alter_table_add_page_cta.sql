-- Revert schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_page_cta from pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations
    DROP COLUMN page_cta;

COMMIT;
