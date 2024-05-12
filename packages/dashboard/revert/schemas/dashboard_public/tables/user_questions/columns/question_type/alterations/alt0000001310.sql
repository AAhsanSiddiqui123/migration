-- Revert: schemas/dashboard_public/tables/user_questions/columns/question_type/alterations/alt0000001310 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions
    ADD COLUMN question_type text;

COMMIT;  

