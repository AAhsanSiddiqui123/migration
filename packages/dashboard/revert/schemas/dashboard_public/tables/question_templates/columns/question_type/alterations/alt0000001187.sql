-- Revert: schemas/dashboard_public/tables/question_templates/columns/question_type/alterations/alt0000001187 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".question_templates.question_type IS NULL;
COMMIT;  

