-- Deploy: schemas/dashboard_private/alterations/alt0000000007 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
