-- Deploy: schemas/dashboard_public/tables/onboarding_questions/alterations/alt0000001359 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema

BEGIN;

DROP TABLE IF EXISTS "dashboard_public".onboarding_questions CASCADE;
COMMIT;
