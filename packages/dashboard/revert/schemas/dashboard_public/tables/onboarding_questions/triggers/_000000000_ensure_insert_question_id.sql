-- Revert: schemas/dashboard_public/tables/onboarding_questions/triggers/_000000000_ensure_insert_question_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_question_id ON "dashboard_public".onboarding_questions;
COMMIT;  

