-- Deploy: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/algo/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table

BEGIN;

ALTER TABLE "dashboard_encrypted".user_encrypted_secrets ADD COLUMN algo text;
COMMIT;
