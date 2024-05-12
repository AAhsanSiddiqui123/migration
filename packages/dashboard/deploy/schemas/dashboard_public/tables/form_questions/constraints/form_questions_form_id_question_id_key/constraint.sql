-- Deploy: schemas/dashboard_public/tables/form_questions/constraints/form_questions_form_id_question_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;

ALTER TABLE "dashboard_public".form_questions
    ADD CONSTRAINT form_questions_form_id_question_id_key UNIQUE (form_id,question_id);
COMMIT;
