-- Revert: schemas/dashboard_public/tables/user_question_language_variations/columns/id/alterations/alt0000001427 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

