-- Deploy: schemas/dashboard_limits_private/alterations/alt0000000057 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_limits_private" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_limits_private" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;
