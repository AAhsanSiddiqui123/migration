-- Deploy: schemas/dashboard_invites_public/tables/member_invites/columns/invite_count/alterations/alt0000000502 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table
-- requires: schemas/dashboard_invites_public/tables/member_invites/columns/invite_count/column

BEGIN;

ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN invite_count SET DEFAULT 0;
COMMIT;
