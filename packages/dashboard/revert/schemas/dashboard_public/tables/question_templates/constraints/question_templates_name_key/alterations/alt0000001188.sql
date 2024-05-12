-- Revert: schemas/dashboard_public/tables/question_templates/constraints/question_templates_name_key/alterations/alt0000001188 from pg

BEGIN;
COMMENT ON CONSTRAINT question_templates_name_key ON "dashboard_public".question_templates IS NULL;
COMMIT;  

