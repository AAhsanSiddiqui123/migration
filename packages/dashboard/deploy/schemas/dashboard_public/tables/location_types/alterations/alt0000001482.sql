-- Deploy: schemas/dashboard_public/tables/location_types/alterations/alt0000001482 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema

BEGIN;

DROP TABLE IF EXISTS "dashboard_public".location_types CASCADE;
COMMIT;
