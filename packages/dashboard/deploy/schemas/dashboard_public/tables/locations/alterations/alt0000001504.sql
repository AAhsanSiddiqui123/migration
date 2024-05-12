-- Deploy: schemas/dashboard_public/tables/locations/alterations/alt0000001504 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;

ALTER TABLE "dashboard_public".locations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
