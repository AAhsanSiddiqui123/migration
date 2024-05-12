-- Revert: schemas/dashboard_public/tables/question_templates/columns/is_private/alterations/alt0000001375 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN is_private DROP DEFAULT;

COMMIT;  

