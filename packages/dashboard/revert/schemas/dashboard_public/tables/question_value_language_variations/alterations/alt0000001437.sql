-- Revert: schemas/dashboard_public/tables/question_value_language_variations/alterations/alt0000001437 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

