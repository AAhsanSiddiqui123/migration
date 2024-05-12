-- Deploy: schemas/dashboard_invites_public/tables/group_claimed_invites/columns/id/alterations/alt0000000531 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_claimed_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_claimed_invites/columns/id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".group_claimed_invites 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
