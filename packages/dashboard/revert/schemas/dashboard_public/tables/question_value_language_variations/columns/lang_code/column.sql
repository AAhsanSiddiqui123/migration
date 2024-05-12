-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/lang_code/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations DROP COLUMN lang_code;
COMMIT;  

