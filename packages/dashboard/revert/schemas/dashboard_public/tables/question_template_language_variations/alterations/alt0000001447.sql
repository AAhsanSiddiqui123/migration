-- Revert: schemas/dashboard_public/tables/question_template_language_variations/alterations/alt0000001447 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_template_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

