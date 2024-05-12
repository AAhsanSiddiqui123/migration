-- Revert: schemas/dashboard_public/tables/onboarding_questions/columns/question_order/column from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions DROP COLUMN question_order;
COMMIT;  

