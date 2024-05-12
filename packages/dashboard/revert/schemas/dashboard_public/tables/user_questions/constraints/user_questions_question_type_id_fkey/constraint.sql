-- Revert: schemas/dashboard_public/tables/user_questions/constraints/user_questions_question_type_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions 
    DROP CONSTRAINT user_questions_question_type_id_fkey;

COMMIT;  

