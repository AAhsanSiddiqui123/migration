-- Deploy: schemas/dashboard_public/tables/question_template_language_variations/constraints/question_template_language_variations_question_template_id_lang/alterations/alt0000001454 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_template_language_variations/constraints/question_template_language_variations_question_template_id_lang/constraint

BEGIN;
COMMENT ON CONSTRAINT question_template_language_variations_question_template_id_lang ON "dashboard_public".question_template_language_variations IS E'@omit';
COMMIT;
