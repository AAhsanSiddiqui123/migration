-- Deploy: schemas/dashboard_simple_secrets/tables/user_secrets/constraints/user_secrets_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_simple_secrets/schema
-- requires: schemas/dashboard_simple_secrets/tables/user_secrets/table

BEGIN;

ALTER TABLE "dashboard_simple_secrets".user_secrets
    ADD CONSTRAINT user_secrets_pkey PRIMARY KEY (id);
COMMIT;
