-- Revert: schemas/dashboard_public/tables/onboarding_questions/triggers/onboarding_questions_question_id_immutable_tg from pg

BEGIN;
DROP TRIGGER onboarding_questions_question_id_immutable_tg ON "dashboard_public".onboarding_questions;
COMMIT;  

