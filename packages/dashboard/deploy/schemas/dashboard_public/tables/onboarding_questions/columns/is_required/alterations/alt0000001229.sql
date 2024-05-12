-- Deploy: schemas/dashboard_public/tables/onboarding_questions/columns/is_required/alterations/alt0000001229 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table
-- requires: schemas/dashboard_public/tables/onboarding_questions/columns/is_required/column

BEGIN;

ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN is_required SET DEFAULT true;
COMMIT;
