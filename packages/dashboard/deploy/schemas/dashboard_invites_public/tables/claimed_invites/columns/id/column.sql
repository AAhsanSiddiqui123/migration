-- Deploy: schemas/dashboard_invites_public/tables/claimed_invites/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".claimed_invites ADD COLUMN id uuid;
COMMIT;
