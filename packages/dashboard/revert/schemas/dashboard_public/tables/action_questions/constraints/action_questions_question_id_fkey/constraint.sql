-- Revert: schemas/dashboard_public/tables/action_questions/constraints/action_questions_question_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions 
    DROP CONSTRAINT action_questions_question_id_fkey;

COMMIT;  
