-- Deploy: schemas/dashboard_public/tables/user_locations/alterations/alt0000001481 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema

BEGIN;

DROP TABLE IF EXISTS "dashboard_public".user_locations CASCADE;
COMMIT;
