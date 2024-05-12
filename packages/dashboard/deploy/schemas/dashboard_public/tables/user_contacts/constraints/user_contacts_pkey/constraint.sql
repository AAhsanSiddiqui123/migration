-- Deploy: schemas/dashboard_public/tables/user_contacts/constraints/user_contacts_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table

BEGIN;

ALTER TABLE "dashboard_public".user_contacts
    ADD CONSTRAINT user_contacts_pkey PRIMARY KEY (id);
COMMIT;
