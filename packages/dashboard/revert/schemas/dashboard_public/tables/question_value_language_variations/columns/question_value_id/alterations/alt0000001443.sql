-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/question_value_id/alterations/alt0000001443 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations 
    ALTER COLUMN question_value_id DROP NOT NULL;


COMMIT;  

