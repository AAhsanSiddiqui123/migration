-- Deploy: schemas/dashboard_public/tables/locations/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".locations TO authenticated;
COMMIT;
