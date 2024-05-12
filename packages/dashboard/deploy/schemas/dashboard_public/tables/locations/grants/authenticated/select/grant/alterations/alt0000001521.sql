-- Deploy: schemas/dashboard_public/tables/locations/grants/authenticated/select/grant/alterations/alt0000001521 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".locations TO authenticated;
COMMIT;
