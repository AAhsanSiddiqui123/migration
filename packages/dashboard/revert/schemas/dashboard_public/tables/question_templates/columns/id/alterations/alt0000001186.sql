-- Revert: schemas/dashboard_public/tables/question_templates/columns/id/alterations/alt0000001186 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

