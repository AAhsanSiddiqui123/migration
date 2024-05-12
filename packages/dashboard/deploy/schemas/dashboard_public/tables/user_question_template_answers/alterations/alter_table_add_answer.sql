-- Deploy schemas/dashboard_public/tables/user_question_template_answers/alterations/alter_table_add_answer to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_template_answers/table

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers
    ADD COLUMN answer text NULL;

COMMIT;
