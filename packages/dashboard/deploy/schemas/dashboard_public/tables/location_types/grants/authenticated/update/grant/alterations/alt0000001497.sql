-- Deploy: schemas/dashboard_public/tables/location_types/grants/authenticated/update/grant/alterations/alt0000001497 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".location_types TO authenticated;
COMMIT;
