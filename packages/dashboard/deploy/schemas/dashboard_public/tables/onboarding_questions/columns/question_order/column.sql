-- Deploy: schemas/dashboard_public/tables/onboarding_questions/columns/question_order/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table

BEGIN;

ALTER TABLE "dashboard_public".onboarding_questions ADD COLUMN question_order int;
COMMIT;
