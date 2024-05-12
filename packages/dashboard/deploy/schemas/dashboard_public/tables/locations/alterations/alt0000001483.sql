-- Deploy: schemas/dashboard_public/tables/locations/alterations/alt0000001483 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema

BEGIN;

DROP TABLE IF EXISTS "dashboard_public".locations CASCADE;
COMMIT;
