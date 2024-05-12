-- Deploy: schemas/dashboard_simple_secrets/alterations/alt0000000378 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_simple_secrets/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_simple_secrets"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
