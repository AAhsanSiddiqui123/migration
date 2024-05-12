-- Deploy: schemas/dashboard_public/tables/question_value_language_variations/constraints/question_value_language_variations_question_value_id_lang_code_/alterations/alt0000001446 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_value_language_variations/constraints/question_value_language_variations_question_value_id_lang_code_/constraint

BEGIN;
COMMENT ON CONSTRAINT question_value_language_variations_question_value_id_lang_code_ ON "dashboard_public".question_value_language_variations IS E'@omit';
COMMIT;
