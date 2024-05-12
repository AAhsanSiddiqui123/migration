-- Deploy: schemas/dashboard_permissions_public/alterations/alt0000000033 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_permissions_public" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_permissions_public" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;
