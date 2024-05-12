-- Deploy: schemas/dashboard_public/tables/form_questions/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".form_questions TO authenticated;
COMMIT;
