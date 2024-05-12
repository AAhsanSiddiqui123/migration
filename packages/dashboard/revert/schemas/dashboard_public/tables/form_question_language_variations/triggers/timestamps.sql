-- Revert schemas/dashboard_public/tables/form_question_language_variations/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations DROP COLUMN created_at;
ALTER TABLE dashboard_public.form_question_language_variations DROP COLUMN updated_at;
DROP TRIGGER update_form_question_language_variations_modtime ON dashboard_public.form_question_language_variations;

COMMIT;
