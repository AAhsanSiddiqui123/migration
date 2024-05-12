-- Revert: schemas/dashboard_public/tables/user_question_language_variations/columns/user_question_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations DROP COLUMN user_question_id;
COMMIT;  

