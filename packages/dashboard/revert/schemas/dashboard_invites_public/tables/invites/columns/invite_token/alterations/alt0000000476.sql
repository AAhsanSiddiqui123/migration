-- Revert: schemas/dashboard_invites_public/tables/invites/columns/invite_token/alterations/alt0000000476 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN invite_token DROP DEFAULT;

COMMIT;  

