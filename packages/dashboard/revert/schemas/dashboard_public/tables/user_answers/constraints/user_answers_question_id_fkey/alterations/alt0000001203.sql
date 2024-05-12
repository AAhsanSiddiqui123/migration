-- Revert: schemas/dashboard_public/tables/user_answers/constraints/user_answers_question_id_fkey/alterations/alt0000001203 from pg

BEGIN;
COMMENT ON CONSTRAINT user_answers_question_id_fkey ON "dashboard_public".user_answers IS NULL;
COMMIT;  

