-- Revert: schemas/dashboard_public/tables/question_template_language_variations/columns/id/alterations/alt0000001449 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_template_language_variations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

