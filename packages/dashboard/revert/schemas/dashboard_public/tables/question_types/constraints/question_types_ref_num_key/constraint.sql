-- Revert: schemas/dashboard_public/tables/question_types/constraints/question_types_ref_num_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types 
    DROP CONSTRAINT question_types_ref_num_key;

COMMIT;  

