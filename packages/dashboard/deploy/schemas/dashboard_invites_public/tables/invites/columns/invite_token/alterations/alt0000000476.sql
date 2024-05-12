-- Deploy: schemas/dashboard_invites_public/tables/invites/columns/invite_token/alterations/alt0000000476 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table
-- requires: schemas/dashboard_invites_public/tables/invites/columns/invite_token/column

BEGIN;

ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN invite_token SET DEFAULT encode( gen_random_bytes( 16 ), 'hex' );
COMMIT;
