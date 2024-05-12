-- Revert: schemas/dashboard_public/tables/question_templates/columns/is_reusable/alterations/alt0000001373 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN is_reusable DROP DEFAULT;

COMMIT;  

