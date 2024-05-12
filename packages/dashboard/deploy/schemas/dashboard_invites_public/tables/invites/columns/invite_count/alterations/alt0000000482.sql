-- Deploy: schemas/dashboard_invites_public/tables/invites/columns/invite_count/alterations/alt0000000482 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table
-- requires: schemas/dashboard_invites_public/tables/invites/columns/invite_count/column

BEGIN;

ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN invite_count SET DEFAULT 0;
COMMIT;
