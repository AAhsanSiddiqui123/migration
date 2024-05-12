-- Revert: schemas/dashboard_public/tables/form_questions/columns/question_order/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions DROP COLUMN question_order;
COMMIT;  

