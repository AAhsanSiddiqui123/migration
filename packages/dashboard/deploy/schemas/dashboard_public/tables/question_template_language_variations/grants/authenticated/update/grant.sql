-- Deploy: schemas/dashboard_public/tables/question_template_language_variations/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_template_language_variations/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".question_template_language_variations TO authenticated;
COMMIT;
