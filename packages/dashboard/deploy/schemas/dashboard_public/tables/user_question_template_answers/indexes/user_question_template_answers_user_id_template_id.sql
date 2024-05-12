-- Deploy schemas/dashboard_public/tables/user_question_template_answers/indexes/user_question_template_answers_user_id_template_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_template_answers/table

BEGIN;

CREATE INDEX user_question_template_answers_user_id_template_id ON dashboard_public.user_question_template_answers (
user_id , question_template_id 
);

COMMIT;
