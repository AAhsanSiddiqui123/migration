-- Revert: schemas/dashboard_invites_public/tables/group_claimed_invites/columns/id/alterations/alt0000000532 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_claimed_invites 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

