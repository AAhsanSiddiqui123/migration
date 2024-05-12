-- Deploy: schemas/dashboard_roles_public/alterations/alt0000000413 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_roles_public" TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_roles_public" GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_roles_public" GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_roles_public" GRANT ALL ON FUNCTIONS TO administrator;
COMMIT;
