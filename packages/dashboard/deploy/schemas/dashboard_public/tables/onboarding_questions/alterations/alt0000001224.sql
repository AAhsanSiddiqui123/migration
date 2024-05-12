-- Deploy: schemas/dashboard_public/tables/onboarding_questions/alterations/alt0000001224 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table

BEGIN;

ALTER TABLE "dashboard_public".onboarding_questions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
