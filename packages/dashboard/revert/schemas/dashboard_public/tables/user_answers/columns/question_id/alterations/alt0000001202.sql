-- Revert: schemas/dashboard_public/tables/user_answers/columns/question_id/alterations/alt0000001202 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN question_id DROP NOT NULL;


COMMIT;  

