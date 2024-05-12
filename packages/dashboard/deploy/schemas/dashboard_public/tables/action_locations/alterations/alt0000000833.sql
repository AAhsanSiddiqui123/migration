-- Deploy: schemas/dashboard_public/tables/action_locations/alterations/alt0000000833 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table

BEGIN;

ALTER TABLE "dashboard_public".action_locations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
