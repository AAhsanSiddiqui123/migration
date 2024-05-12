-- Deploy: schemas/dashboard_public/tables/location_types/grants/authenticated/delete/grant/alterations/alt0000001498 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".location_types TO authenticated;
COMMIT;
