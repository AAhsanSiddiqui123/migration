-- Deploy schemas/dashboard_public/tables/form_question_language_variations/indexes/form_question_language_variations_form_question_id_idx to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table

BEGIN;

CREATE INDEX form_question_language_variations_form_question_id_idx ON dashboard_public.form_question_language_variations (
 form_question_id
);

COMMIT;
