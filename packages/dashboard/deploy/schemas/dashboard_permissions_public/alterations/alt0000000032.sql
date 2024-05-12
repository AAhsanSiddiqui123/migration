-- Deploy: schemas/dashboard_permissions_public/alterations/alt0000000032 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_permissions_public"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
