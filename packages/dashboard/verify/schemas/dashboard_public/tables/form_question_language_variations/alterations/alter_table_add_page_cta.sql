-- Verify schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_page_cta  on pg

BEGIN;

SELECT page_cta FROM dashboard_public.form_question_language_variations LIMIT 1;

ROLLBACK;
