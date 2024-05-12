-- Revert: schemas/dashboard_public/tables/question_template_language_variations/columns/question_template_id/alterations/alt0000001452 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_template_language_variations 
    ALTER COLUMN question_template_id DROP NOT NULL;


COMMIT;  

