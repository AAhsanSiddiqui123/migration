-- Revert: schemas/dashboard_public/tables/action_questions/columns/question_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions DROP COLUMN question_id;
COMMIT;  

