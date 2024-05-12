-- Deploy: schemas/dashboard_public/tables/emails/constraints/emails_email_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;

ALTER TABLE "dashboard_public".emails
    ADD CONSTRAINT emails_email_key UNIQUE (email);
COMMIT;
