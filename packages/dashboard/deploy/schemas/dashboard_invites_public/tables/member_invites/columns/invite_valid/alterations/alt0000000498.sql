-- Deploy: schemas/dashboard_invites_public/tables/member_invites/columns/invite_valid/alterations/alt0000000498 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table
-- requires: schemas/dashboard_invites_public/tables/member_invites/columns/invite_valid/column

BEGIN;

ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN invite_valid SET DEFAULT TRUE;
COMMIT;
