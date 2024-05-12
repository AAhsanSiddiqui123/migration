-- Revert: schemas/dashboard_public/tables/user_question_language_variations/columns/lang_code/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations DROP COLUMN lang_code;
COMMIT;  

