-- Deploy: schemas/dashboard_roles_private/alterations/alt0000000386 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_roles_private" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_roles_private" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;
