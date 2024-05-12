-- Deploy: schemas/dashboard_public/tables/onboarding_questions/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".onboarding_questions TO authenticated;
COMMIT;
