-- Revert: schemas/dashboard_public/tables/question_values/constraints/question_values_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values 
    DROP CONSTRAINT question_values_pkey;

COMMIT;  

