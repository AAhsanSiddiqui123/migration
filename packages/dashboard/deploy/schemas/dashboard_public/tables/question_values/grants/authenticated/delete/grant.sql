-- Deploy: schemas/dashboard_public/tables/question_values/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".question_values TO authenticated;
COMMIT;
