-- Deploy: schemas/dashboard_invites_public/tables/invites/columns/invite_count/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".invites ADD COLUMN invite_count int;
COMMIT;
