-- Revert: schemas/dashboard_public/tables/form_questions/columns/question_order/alterations/alt0000001350 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN question_order DROP DEFAULT;

COMMIT;  

