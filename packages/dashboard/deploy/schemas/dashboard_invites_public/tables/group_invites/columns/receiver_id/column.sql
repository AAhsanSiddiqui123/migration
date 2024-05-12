-- Deploy: schemas/dashboard_invites_public/tables/group_invites/columns/receiver_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites ADD COLUMN receiver_id uuid;
COMMIT;
