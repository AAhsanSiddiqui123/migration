-- Deploy: schemas/dashboard_encrypted/tables/user_encrypted_secrets/alterations/alt0000000408 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table

BEGIN;

ALTER TABLE "dashboard_encrypted".user_encrypted_secrets
    DISABLE ROW LEVEL SECURITY;
COMMIT;
