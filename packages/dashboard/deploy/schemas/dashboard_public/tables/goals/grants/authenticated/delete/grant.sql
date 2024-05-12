-- Deploy: schemas/dashboard_public/tables/goals/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".goals TO authenticated;
COMMIT;
