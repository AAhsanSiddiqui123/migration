-- Deploy: schemas/dashboard_status_public/alterations/alt0000000135 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_status_public"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
