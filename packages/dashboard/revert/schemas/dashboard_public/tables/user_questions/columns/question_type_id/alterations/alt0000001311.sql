-- Revert: schemas/dashboard_public/tables/user_questions/columns/question_type_id/alterations/alt0000001311 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN question_type_id DROP NOT NULL;


COMMIT;  

