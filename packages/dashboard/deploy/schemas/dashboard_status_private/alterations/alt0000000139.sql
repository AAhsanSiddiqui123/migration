-- Deploy: schemas/dashboard_status_private/alterations/alt0000000139 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_status_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
