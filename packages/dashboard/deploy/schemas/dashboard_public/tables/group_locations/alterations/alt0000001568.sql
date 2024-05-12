-- Deploy: schemas/dashboard_public/tables/group_locations/alterations/alt0000001568 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema

BEGIN;

DROP TABLE IF EXISTS "dashboard_public".group_locations CASCADE;
COMMIT;
