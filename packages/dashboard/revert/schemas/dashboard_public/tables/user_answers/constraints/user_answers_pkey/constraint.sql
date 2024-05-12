-- Revert: schemas/dashboard_public/tables/user_answers/constraints/user_answers_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    DROP CONSTRAINT user_answers_pkey;

COMMIT;  

