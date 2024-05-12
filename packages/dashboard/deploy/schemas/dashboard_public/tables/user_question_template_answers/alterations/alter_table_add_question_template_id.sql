-- Deploy schemas/dashboard_public/tables/user_question_template_answers/alterations/alter_table_add_question_template_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_template_answers/table

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers
    ADD COLUMN question_template_id uuid NOT NULL;

COMMIT;
