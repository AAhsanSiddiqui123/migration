-- Revert: schemas/dashboard_public/tables/question_types/constraints/question_types_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types 
    DROP CONSTRAINT question_types_pkey;

COMMIT;  

