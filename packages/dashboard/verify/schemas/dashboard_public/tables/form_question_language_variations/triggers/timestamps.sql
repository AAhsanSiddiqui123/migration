-- Verify schemas/dashboard_public/tables/form_question_language_variations/triggers/timestamps  on pg

BEGIN;

SELECT created_at FROM dashboard_public.form_question_language_variations LIMIT 1;
SELECT updated_at FROM dashboard_public.form_question_language_variations LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_form_question_language_variations_modtime');

ROLLBACK;
