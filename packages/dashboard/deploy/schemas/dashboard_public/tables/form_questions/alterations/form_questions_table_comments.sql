-- Deploy dashboard:schemas/dashboard_public/tables/form_questions/alterations/form_questions_table_comments to pg

BEGIN;

COMMENT ON TABLE dashboard_public.form_questions IS '@i18n form_question_language_variations';

COMMIT;
