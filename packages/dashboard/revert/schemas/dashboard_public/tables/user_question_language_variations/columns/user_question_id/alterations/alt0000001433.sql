-- Revert: schemas/dashboard_public/tables/user_question_language_variations/columns/user_question_id/alterations/alt0000001433 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations 
    ALTER COLUMN user_question_id DROP NOT NULL;


COMMIT;  

