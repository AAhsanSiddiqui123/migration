-- Revert schemas/dashboard_public/tables/form_question_language_variations/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations DROP COLUMN created_by;
ALTER TABLE dashboard_public.form_question_language_variations DROP COLUMN updated_by;
DROP TRIGGER update_form_question_language_variations_moduser ON dashboard_public.form_question_language_variations;

COMMIT;
