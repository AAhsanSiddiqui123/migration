-- Revert: schemas/dashboard_public/tables/question_templates/columns/question_type_id/alterations/alt0000001313 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN question_type_id DROP NOT NULL;


COMMIT;  

