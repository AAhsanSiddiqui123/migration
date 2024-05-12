-- Revert: schemas/dashboard_public/tables/form_questions/columns/question_id/alterations/alt0000001355 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN question_id DROP NOT NULL;


COMMIT;  

