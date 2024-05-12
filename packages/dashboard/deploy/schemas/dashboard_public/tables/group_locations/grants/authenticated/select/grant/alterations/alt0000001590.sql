-- Deploy: schemas/dashboard_public/tables/group_locations/grants/authenticated/select/grant/alterations/alt0000001590 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".group_locations TO authenticated;
COMMIT;
