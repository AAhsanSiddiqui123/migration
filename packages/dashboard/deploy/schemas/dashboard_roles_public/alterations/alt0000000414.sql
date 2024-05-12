-- Deploy: schemas/dashboard_roles_public/alterations/alt0000000414 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_roles_public" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_roles_public" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;
