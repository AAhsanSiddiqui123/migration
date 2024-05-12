-- Deploy schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_question_title to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table

BEGIN;

ALTER TABLE dashboard_public.user_questions
    ADD COLUMN question_title text NULL;

COMMIT;
