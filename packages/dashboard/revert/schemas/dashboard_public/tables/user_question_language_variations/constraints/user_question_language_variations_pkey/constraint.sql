-- Revert: schemas/dashboard_public/tables/user_question_language_variations/constraints/user_question_language_variations_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations 
    DROP CONSTRAINT user_question_language_variations_pkey;

COMMIT;  

