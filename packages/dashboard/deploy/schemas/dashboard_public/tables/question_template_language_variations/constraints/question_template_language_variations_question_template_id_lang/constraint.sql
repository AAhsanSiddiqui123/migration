-- Deploy: schemas/dashboard_public/tables/question_template_language_variations/constraints/question_template_language_variations_question_template_id_lang/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_template_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".question_template_language_variations
    ADD CONSTRAINT question_template_language_variations_question_template_id_lang UNIQUE (question_template_id,lang_code);
COMMIT;
