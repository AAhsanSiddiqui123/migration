-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/constraints/user_question_language_variations_user_question_id_lang_code_ke/alterations/alt0000001436 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/constraints/user_question_language_variations_user_question_id_lang_code_ke/constraint

BEGIN;
COMMENT ON CONSTRAINT user_question_language_variations_user_question_id_lang_code_ke ON "dashboard_public".user_question_language_variations IS E'@omit';
COMMIT;
