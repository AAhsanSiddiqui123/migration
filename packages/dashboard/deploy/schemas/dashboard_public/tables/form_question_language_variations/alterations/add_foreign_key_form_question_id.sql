-- Deploy schemas/dashboard_public/tables/form_question_language_variations/alterations/add_foreign_key_form_question_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;


ALTER TABLE dashboard_public.form_question_language_variations
    ADD CONSTRAINT fk_form_question_language_variations_form_question_id
    FOREIGN KEY (form_question_id)
    REFERENCES dashboard_public.form_questions (id)
    ON DELETE CASCADE;


COMMIT;
