-- Deploy schemas/dashboard_public/tables/user_question_template_answers/alterations/add_foreign_key_question_template_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_template_answers/table
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;


ALTER TABLE dashboard_public.user_question_template_answers
    ADD CONSTRAINT fk_user_question_template_answers_question_template_id
    FOREIGN KEY (question_template_id)
    REFERENCES dashboard_public.question_templates (id)
    ON DELETE CASCADE;


COMMIT;
