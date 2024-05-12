-- Revert: schemas/dashboard_public/tables/action_questions/columns/question_id/alterations/alt0000001221 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN question_id DROP NOT NULL;


COMMIT;  

