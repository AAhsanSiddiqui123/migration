-- Deploy: schemas/dashboard_encrypted/tables/user_encrypted_secrets/constraints/user_encrypted_secrets_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table

BEGIN;

ALTER TABLE "dashboard_encrypted".user_encrypted_secrets
    ADD CONSTRAINT user_encrypted_secrets_pkey PRIMARY KEY (id);
COMMIT;
