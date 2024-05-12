-- Deploy: schemas/dashboard_public/tables/question_templates/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".question_templates TO authenticated;
COMMIT;
