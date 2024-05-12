-- Deploy: schemas/dashboard_permissions_private/alterations/alt0000000035 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_permissions_private" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_permissions_private" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;
