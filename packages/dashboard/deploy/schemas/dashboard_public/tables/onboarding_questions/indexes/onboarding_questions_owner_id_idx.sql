-- Deploy: schemas/dashboard_public/tables/onboarding_questions/indexes/onboarding_questions_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table
-- requires: schemas/dashboard_public/tables/onboarding_questions/columns/owner_id/column

BEGIN;
CREATE INDEX onboarding_questions_owner_id_idx ON "dashboard_public".onboarding_questions (owner_id);
COMMIT;
