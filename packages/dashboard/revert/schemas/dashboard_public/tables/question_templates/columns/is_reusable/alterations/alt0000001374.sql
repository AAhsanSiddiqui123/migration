-- Revert: schemas/dashboard_public/tables/question_templates/columns/is_reusable/alterations/alt0000001374 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".question_templates.is_reusable IS NULL;
COMMIT;  

