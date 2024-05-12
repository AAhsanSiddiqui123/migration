-- Revert: schemas/dashboard_public/tables/question_templates/alterations/alt0000001451 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".question_templates IS NULL;
COMMIT;  

