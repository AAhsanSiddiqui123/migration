-- Deploy: schemas/dashboard_invites_public/tables/member_claimed_invites/columns/data/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_claimed_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".member_claimed_invites ADD COLUMN data json;
COMMIT;
