-- Deploy: schemas/dashboard_public/tables/onboarding_questions/indexes/onboarding_questions_question_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table
-- requires: schemas/dashboard_public/tables/onboarding_questions/columns/question_id/column

BEGIN;
CREATE INDEX onboarding_questions_question_id_idx ON "dashboard_public".onboarding_questions (question_id);
COMMIT;
