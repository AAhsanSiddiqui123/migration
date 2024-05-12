-- Deploy: schemas/dashboard_public/tables/emails/constraints/emails_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;

ALTER TABLE "dashboard_public".emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);
COMMIT;
