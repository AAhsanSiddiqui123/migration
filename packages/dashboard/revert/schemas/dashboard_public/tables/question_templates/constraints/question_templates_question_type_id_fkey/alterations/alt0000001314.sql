-- Revert: schemas/dashboard_public/tables/question_templates/constraints/question_templates_question_type_id_fkey/alterations/alt0000001314 from pg

BEGIN;
COMMENT ON CONSTRAINT question_templates_question_type_id_fkey ON "dashboard_public".question_templates IS NULL;
COMMIT;  

