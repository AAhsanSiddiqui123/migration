-- Deploy: schemas/dashboard_public/tables/action_locations/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".action_locations TO authenticated;
COMMIT;
