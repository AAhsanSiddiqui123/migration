-- Revert: schemas/dashboard_public/tables/user_questions/columns/question_type/alterations/alt0000001192 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_questions.question_type IS NULL;
COMMIT;  

