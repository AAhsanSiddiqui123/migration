-- Deploy: schemas/dashboard_encrypted/alterations/alt0000000406 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_encrypted"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
