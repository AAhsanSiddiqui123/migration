-- Revert: schemas/dashboard_public/tables/user_questions/columns/question_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN question_type_id;
COMMIT;  

