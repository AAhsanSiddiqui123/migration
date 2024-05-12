-- Verify schemas/dashboard_public/tables/form_questions/alterations/alter_table_add_page_description  on pg

BEGIN;

SELECT page_description FROM dashboard_public.form_questions LIMIT 1;

ROLLBACK;
