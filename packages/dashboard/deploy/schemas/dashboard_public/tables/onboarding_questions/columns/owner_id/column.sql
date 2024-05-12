-- Deploy: schemas/dashboard_public/tables/onboarding_questions/columns/owner_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table

BEGIN;

ALTER TABLE "dashboard_public".onboarding_questions ADD COLUMN owner_id uuid;
COMMIT;
