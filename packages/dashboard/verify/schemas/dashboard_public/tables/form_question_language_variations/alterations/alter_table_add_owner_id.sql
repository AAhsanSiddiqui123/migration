-- Verify schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_owner_id  on pg

BEGIN;

SELECT owner_id FROM dashboard_public.form_question_language_variations LIMIT 1;

ROLLBACK;
