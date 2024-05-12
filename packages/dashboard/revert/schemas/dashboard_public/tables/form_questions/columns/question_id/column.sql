-- Revert: schemas/dashboard_public/tables/form_questions/columns/question_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions DROP COLUMN question_id;
COMMIT;  

