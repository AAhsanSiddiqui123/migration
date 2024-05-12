-- Deploy: schemas/dashboard_limits_private/alterations/alt0000000055 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_limits_private" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_limits_private" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;
