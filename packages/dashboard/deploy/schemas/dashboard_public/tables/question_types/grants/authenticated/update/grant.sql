-- Deploy: schemas/dashboard_public/tables/question_types/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".question_types TO authenticated;
COMMIT;
