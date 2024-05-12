-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/constraints/user_question_language_variations_user_question_id_lang_code_ke/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".user_question_language_variations
    ADD CONSTRAINT user_question_language_variations_user_question_id_lang_code_ke UNIQUE (user_question_id,lang_code);
COMMIT;
