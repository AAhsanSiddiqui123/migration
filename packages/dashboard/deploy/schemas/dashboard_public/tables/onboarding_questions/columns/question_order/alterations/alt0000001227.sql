-- Deploy: schemas/dashboard_public/tables/onboarding_questions/columns/question_order/alterations/alt0000001227 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table
-- requires: schemas/dashboard_public/tables/onboarding_questions/columns/question_order/column

BEGIN;

ALTER TABLE "dashboard_public".onboarding_questions 
    ALTER COLUMN question_order SET DEFAULT 0;
COMMIT;
