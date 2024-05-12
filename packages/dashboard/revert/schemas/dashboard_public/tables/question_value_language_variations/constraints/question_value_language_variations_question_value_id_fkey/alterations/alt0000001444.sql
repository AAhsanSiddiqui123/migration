-- Revert: schemas/dashboard_public/tables/question_value_language_variations/constraints/question_value_language_variations_question_value_id_fkey/alterations/alt0000001444 from pg

BEGIN;
COMMENT ON CONSTRAINT question_value_language_variations_question_value_id_fkey ON "dashboard_public".question_value_language_variations IS NULL;
COMMIT;  

