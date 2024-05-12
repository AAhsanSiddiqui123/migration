-- Deploy: schemas/dashboard_public/tables/onboarding_questions/constraints/onboarding_questions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table

BEGIN;

ALTER TABLE "dashboard_public".onboarding_questions
    ADD CONSTRAINT onboarding_questions_pkey PRIMARY KEY (id);
COMMIT;
