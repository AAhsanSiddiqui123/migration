-- Revert schemas/dashboard_public/tables/form_question_language_variations/alterations/add_foreign_key_form_question_id from pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations
    DROP CONSTRAINT fk_form_question_language_variations_form_question_id;

COMMIT;
