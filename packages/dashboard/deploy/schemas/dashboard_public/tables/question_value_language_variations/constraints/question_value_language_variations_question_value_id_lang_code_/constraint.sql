-- Deploy: schemas/dashboard_public/tables/question_value_language_variations/constraints/question_value_language_variations_question_value_id_lang_code_/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_value_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".question_value_language_variations
    ADD CONSTRAINT question_value_language_variations_question_value_id_lang_code_ UNIQUE (question_value_id,lang_code);
COMMIT;
