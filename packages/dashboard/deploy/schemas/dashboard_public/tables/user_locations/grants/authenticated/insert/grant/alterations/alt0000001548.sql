-- Deploy: schemas/dashboard_public/tables/user_locations/grants/authenticated/insert/grant/alterations/alt0000001548 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".user_locations TO authenticated;
COMMIT;
