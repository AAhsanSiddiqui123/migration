-- Revert: schemas/dashboard_public/tables/user_questions/constraints/user_questions_question_type_id_fkey/alterations/alt0000001312 from pg

BEGIN;
COMMENT ON CONSTRAINT user_questions_question_type_id_fkey ON "dashboard_public".user_questions IS NULL;
COMMIT;  

