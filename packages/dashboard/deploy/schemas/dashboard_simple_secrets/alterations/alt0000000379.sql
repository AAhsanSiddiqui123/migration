-- Deploy: schemas/dashboard_simple_secrets/alterations/alt0000000379 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_simple_secrets/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_simple_secrets" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_simple_secrets" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;
