-- Deploy: schemas/dashboard_public/tables/onboarding_questions/constraints/onboarding_questions_question_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table
-- requires: schemas/dashboard_public/tables/onboarding_questions/table
-- requires: schemas/dashboard_public/tables/user_questions/columns/id/column
-- requires: schemas/dashboard_public/tables/onboarding_questions/columns/question_id/column

BEGIN;

ALTER TABLE "dashboard_public".onboarding_questions 
    ADD CONSTRAINT onboarding_questions_question_id_fkey 
    FOREIGN KEY (question_id)
    REFERENCES "dashboard_public".user_questions (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
