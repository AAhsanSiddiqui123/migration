-- Deploy: schemas/dashboard_invites_public/tables/group_invites/columns/invite_limit/alterations/alt0000000522 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_invites/columns/invite_limit/column

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN invite_limit SET DEFAULT -1;
COMMIT;
