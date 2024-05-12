-- Revert: schemas/dashboard_public/tables/user_questions/columns/question_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN question_type;
COMMIT;  

