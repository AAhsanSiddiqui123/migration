-- Deploy: schemas/dashboard_invites_public/tables/member_invites/constraints/member_invites_invite_token_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".member_invites
    ADD CONSTRAINT member_invites_invite_token_key UNIQUE (invite_token);
COMMIT;
