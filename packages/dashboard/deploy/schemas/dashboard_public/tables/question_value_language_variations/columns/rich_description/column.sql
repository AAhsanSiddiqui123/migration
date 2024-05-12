-- Deploy: schemas/dashboard_public/tables/question_value_language_variations/columns/rich_description/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_value_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".question_value_language_variations ADD COLUMN rich_description text;
COMMIT;
