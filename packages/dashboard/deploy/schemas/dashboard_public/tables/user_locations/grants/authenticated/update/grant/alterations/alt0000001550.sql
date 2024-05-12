-- Deploy: schemas/dashboard_public/tables/user_locations/grants/authenticated/update/grant/alterations/alt0000001550 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".user_locations TO authenticated;
COMMIT;
