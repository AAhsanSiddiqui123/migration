-- Verify schemas/dashboard_public/tables/form_question_language_variations/triggers/peoplestamps  on pg

BEGIN;

SELECT created_by FROM dashboard_public.form_question_language_variations LIMIT 1;
SELECT updated_by FROM dashboard_public.form_question_language_variations LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_form_question_language_variations_moduser');

ROLLBACK;
