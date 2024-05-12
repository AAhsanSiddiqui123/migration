-- Deploy: schemas/dashboard_public/tables/onboarding_questions/columns/owner_id/alterations/alt0000001231 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table
-- requires: schemas/dashboard_public/tables/onboarding_questions/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
