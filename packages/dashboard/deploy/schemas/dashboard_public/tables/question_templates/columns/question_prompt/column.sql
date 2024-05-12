-- Deploy: schemas/dashboard_public/tables/question_templates/columns/question_prompt/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;

ALTER TABLE "dashboard_public".question_templates ADD COLUMN question_prompt text;
COMMIT;
