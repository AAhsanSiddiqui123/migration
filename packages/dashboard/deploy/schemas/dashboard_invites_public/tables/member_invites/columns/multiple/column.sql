-- Deploy: schemas/dashboard_invites_public/tables/member_invites/columns/multiple/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".member_invites ADD COLUMN multiple boolean;
COMMIT;
