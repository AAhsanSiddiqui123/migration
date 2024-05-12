-- Revert: schemas/dashboard_public/tables/user_questions/constraints/user_questions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions 
    DROP CONSTRAINT user_questions_pkey;

COMMIT;  

