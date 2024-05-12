-- Revert schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_form_question_id from pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations
    DROP COLUMN form_question_id;

COMMIT;
