-- Verify schemas/dashboard_public/tables/form_question_language_variations/policies/auth_del  on pg

BEGIN;

SELECT verify_policy ('auth_del', 'dashboard_public.form_question_language_variations');


ROLLBACK;
