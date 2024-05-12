-- Deploy: schemas/dashboard_public/tables/onboarding_questions/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".onboarding_questions TO authenticated;
COMMIT;
