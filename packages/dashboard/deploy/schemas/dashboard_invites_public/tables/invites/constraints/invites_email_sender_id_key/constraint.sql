-- Deploy: schemas/dashboard_invites_public/tables/invites/constraints/invites_email_sender_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".invites
    ADD CONSTRAINT invites_email_sender_id_key UNIQUE (email,sender_id);
COMMIT;
