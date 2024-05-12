-- Revert dashboard:schemas/dashboard_public/tables/form_questions/alterations/form_questions_table_comments from pg

BEGIN;

COMMENT ON TABLE dashboard_public.form_questions IS '';

COMMIT;
