-- Deploy: schemas/dashboard_simple_secrets/tables/user_secrets/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_simple_secrets/schema
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/table

BEGIN;

ALTER TABLE "dashboard_simple_secrets".user_secrets ADD COLUMN name text;
COMMIT;
