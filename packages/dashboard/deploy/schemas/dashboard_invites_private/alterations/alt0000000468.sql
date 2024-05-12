-- Deploy: schemas/dashboard_invites_private/alterations/alt0000000468 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_invites_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
