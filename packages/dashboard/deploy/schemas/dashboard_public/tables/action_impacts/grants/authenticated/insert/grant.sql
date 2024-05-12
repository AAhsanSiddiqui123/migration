-- Deploy: schemas/dashboard_public/tables/action_impacts/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".action_impacts TO authenticated;
COMMIT;
