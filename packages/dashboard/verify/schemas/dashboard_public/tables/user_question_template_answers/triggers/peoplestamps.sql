-- Verify schemas/dashboard_public/tables/user_question_template_answers/triggers/peoplestamps  on pg

BEGIN;

SELECT created_by FROM dashboard_public.user_question_template_answers LIMIT 1;
SELECT updated_by FROM dashboard_public.user_question_template_answers LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_user_question_template_answers_moduser');

ROLLBACK;
