-- Deploy: schemas/dashboard_public/tables/locations/grants/authenticated/update/grant/alterations/alt0000001522 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".locations TO authenticated;
COMMIT;
