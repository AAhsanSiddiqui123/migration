-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/columns/help_text/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".user_question_language_variations ADD COLUMN help_text text;
COMMIT;
