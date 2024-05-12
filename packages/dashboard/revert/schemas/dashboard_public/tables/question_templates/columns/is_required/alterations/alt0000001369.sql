-- Revert: schemas/dashboard_public/tables/question_templates/columns/is_required/alterations/alt0000001369 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN is_required DROP NOT NULL;


COMMIT;  

