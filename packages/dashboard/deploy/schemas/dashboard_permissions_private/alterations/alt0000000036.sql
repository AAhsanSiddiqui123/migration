-- Deploy: schemas/dashboard_permissions_private/alterations/alt0000000036 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_permissions_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
