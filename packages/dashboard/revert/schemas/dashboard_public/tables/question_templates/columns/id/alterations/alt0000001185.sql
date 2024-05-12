-- Revert: schemas/dashboard_public/tables/question_templates/columns/id/alterations/alt0000001185 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

