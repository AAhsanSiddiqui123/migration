-- Deploy: schemas/dashboard_roles_public/alterations/alt0000000415 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_roles_public"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;
