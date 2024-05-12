-- Deploy: schemas/dashboard_encrypted/alterations/alt0000000407 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_encrypted" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_encrypted" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;
