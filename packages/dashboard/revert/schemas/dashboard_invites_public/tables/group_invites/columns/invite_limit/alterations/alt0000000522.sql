-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/invite_limit/alterations/alt0000000522 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN invite_limit DROP DEFAULT;

COMMIT;  

