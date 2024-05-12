-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/constraints/auth_accounts_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table

BEGIN;

ALTER TABLE "dashboard_roles_public".auth_accounts
    ADD CONSTRAINT auth_accounts_pkey PRIMARY KEY (id);
COMMIT;
