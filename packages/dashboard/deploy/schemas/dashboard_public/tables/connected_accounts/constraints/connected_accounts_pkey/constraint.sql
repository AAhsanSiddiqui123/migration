-- Deploy: schemas/dashboard_public/tables/connected_accounts/constraints/connected_accounts_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/table

BEGIN;

ALTER TABLE "dashboard_public".connected_accounts
    ADD CONSTRAINT connected_accounts_pkey PRIMARY KEY (id);
COMMIT;
