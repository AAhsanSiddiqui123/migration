-- Verify schemas/dashboard_public/tables/form_questions/alterations/alter_table_add_page_cta  on pg

BEGIN;

SELECT page_cta FROM dashboard_public.form_questions LIMIT 1;

ROLLBACK;
