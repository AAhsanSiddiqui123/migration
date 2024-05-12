-- Deploy: schemas/dashboard_invites_public/tables/invites/columns/invite_limit/alterations/alt0000000480 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table
-- requires: schemas/dashboard_invites_public/tables/invites/columns/invite_limit/column

BEGIN;

ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN invite_limit SET DEFAULT -1;
COMMIT;
