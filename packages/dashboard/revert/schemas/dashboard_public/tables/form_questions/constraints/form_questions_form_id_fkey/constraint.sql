-- Revert: schemas/dashboard_public/tables/form_questions/constraints/form_questions_form_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions 
    DROP CONSTRAINT form_questions_form_id_fkey;

COMMIT;  

