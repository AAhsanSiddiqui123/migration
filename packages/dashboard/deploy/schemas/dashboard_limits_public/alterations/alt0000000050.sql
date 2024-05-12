-- Deploy: schemas/dashboard_limits_public/alterations/alt0000000050 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_limits_public" TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_limits_public" GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_limits_public" GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_limits_public" GRANT ALL ON FUNCTIONS TO administrator;
COMMIT;
