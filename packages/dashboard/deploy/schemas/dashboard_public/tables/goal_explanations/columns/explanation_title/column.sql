-- Deploy: schemas/dashboard_public/tables/goal_explanations/columns/explanation_title/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table

BEGIN;

ALTER TABLE "dashboard_public".goal_explanations ADD COLUMN explanation_title text;
COMMIT;
