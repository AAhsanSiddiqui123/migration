-- Revert: schemas/dashboard_public/tables/user_question_language_variations/alterations/alt0000001426 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

