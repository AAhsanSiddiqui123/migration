-- Deploy: schemas/dashboard_public/alterations/alt0000000004 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_public" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_public" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;
