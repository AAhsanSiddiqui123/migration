-- Revert: schemas/dashboard_invites_public/tables/invites/columns/expires_at/alterations/alt0000000486 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN expires_at DROP DEFAULT;

COMMIT;  

