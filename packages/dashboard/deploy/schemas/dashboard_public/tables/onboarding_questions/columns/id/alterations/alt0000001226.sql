-- Deploy: schemas/dashboard_public/tables/onboarding_questions/columns/id/alterations/alt0000001226 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table
-- requires: schemas/dashboard_public/tables/onboarding_questions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
