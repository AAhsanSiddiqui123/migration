-- Deploy: schemas/dashboard_private/alterations/alt0000000008 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_private" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_private" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;
