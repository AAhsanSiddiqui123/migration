-- Deploy: schemas/dashboard_public/tables/onboarding_questions/constraints/onboarding_questions_question_id_fkey/alterations/alt0000001234 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/constraints/onboarding_questions_question_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT onboarding_questions_question_id_fkey ON "dashboard_public".onboarding_questions IS E'@omit manyToMany';
COMMIT;
