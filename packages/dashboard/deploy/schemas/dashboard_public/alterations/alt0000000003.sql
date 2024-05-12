-- Deploy: schemas/dashboard_public/alterations/alt0000000003 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_public"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
