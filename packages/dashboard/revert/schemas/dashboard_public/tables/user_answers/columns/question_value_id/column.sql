-- Revert: schemas/dashboard_public/tables/user_answers/columns/question_value_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers DROP COLUMN question_value_id;
COMMIT;  

