-- Revert: schemas/dashboard_public/tables/action_questions/columns/question_order/alterations/alt0000001210 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN question_order DROP DEFAULT;

COMMIT;  

