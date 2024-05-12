-- Deploy: schemas/dashboard_public/tables/question_templates/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".question_templates TO authenticated;
COMMIT;
