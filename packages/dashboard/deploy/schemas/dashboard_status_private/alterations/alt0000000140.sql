-- Deploy: schemas/dashboard_status_private/alterations/alt0000000140 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_status_private" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_status_private" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;
