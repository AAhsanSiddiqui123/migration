-- Deploy: schemas/dashboard_public/tables/addresses/constraints/addresses_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;

ALTER TABLE "dashboard_public".addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);
COMMIT;
