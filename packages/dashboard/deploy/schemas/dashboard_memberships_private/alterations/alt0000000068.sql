-- Deploy: schemas/dashboard_memberships_private/alterations/alt0000000068 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_memberships_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
