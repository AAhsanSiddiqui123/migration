-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/id/alterations/alt0000001439 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

