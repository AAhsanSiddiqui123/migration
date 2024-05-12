-- Revert: schemas/dashboard_public/tables/form_questions/constraints/form_questions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions 
    DROP CONSTRAINT form_questions_pkey;

COMMIT;  

