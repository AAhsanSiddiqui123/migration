-- Deploy: schemas/dashboard_memberships_public/alterations/alt0000000023 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_memberships_public" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_memberships_public" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;
