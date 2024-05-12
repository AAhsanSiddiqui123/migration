-- Deploy: schemas/dashboard_invites_public/tables/group_invites/columns/invite_token/alterations/alt0000000518 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_invites/columns/invite_token/column

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN invite_token SET DEFAULT encode( gen_random_bytes( 16 ), 'hex' );
COMMIT;
