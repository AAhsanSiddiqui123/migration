-- Deploy: schemas/dashboard_encrypted/tables/user_encrypted_secrets/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_encrypted".user_encrypted_secrets TO authenticated;
COMMIT;
