-- Revert: schemas/dashboard_invites_public/tables/invites/columns/invite_limit/alterations/alt0000000480 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN invite_limit DROP DEFAULT;

COMMIT;  

