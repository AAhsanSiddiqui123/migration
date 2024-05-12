-- Deploy: schemas/dashboard_limits_public/alterations/alt0000000053 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_limits_public" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_limits_public" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;
