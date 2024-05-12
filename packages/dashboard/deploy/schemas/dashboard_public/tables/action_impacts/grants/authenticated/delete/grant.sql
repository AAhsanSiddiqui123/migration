-- Deploy: schemas/dashboard_public/tables/action_impacts/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".action_impacts TO authenticated;
COMMIT;
