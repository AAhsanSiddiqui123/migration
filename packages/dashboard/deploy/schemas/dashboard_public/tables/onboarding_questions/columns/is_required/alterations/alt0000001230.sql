-- Deploy: schemas/dashboard_public/tables/onboarding_questions/columns/is_required/alterations/alt0000001230 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/columns/is_required/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".onboarding_questions.is_required IS E'required to progress';
COMMIT;
