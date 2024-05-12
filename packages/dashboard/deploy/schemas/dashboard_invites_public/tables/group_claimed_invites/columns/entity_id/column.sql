-- Deploy: schemas/dashboard_invites_public/tables/group_claimed_invites/columns/entity_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_claimed_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".group_claimed_invites ADD COLUMN entity_id uuid;
COMMIT;
