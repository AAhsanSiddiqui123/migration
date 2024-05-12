-- Revert: schemas/dashboard_public/tables/question_templates/constraints/question_templates_name_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates 
    DROP CONSTRAINT question_templates_name_key;

COMMIT;  

