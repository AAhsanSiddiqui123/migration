-- Revert: schemas/dashboard_public/tables/user_questions/columns/question_prompt/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN question_prompt;
COMMIT;  

