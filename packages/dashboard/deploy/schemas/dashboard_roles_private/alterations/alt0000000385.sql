-- Deploy: schemas/dashboard_roles_private/alterations/alt0000000385 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_roles_private" TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_roles_private" GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_roles_private" GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_roles_private" GRANT ALL ON FUNCTIONS TO administrator;
COMMIT;
