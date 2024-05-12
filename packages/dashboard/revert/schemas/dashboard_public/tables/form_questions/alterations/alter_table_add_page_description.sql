-- Revert schemas/dashboard_public/tables/form_questions/alterations/alter_table_add_page_description from pg

BEGIN;

ALTER TABLE dashboard_public.form_questions
    DROP COLUMN page_description;

COMMIT;
