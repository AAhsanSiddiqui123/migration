-- Revert: schemas/dashboard_public/tables/onboarding_questions/alterations/alt0000001224 from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

