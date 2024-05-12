-- Deploy: schemas/dashboard_public/tables/group_locations/alterations/alt0000001132 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table

BEGIN;

ALTER TABLE "dashboard_public".group_locations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
