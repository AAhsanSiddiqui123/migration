-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/multiple/alterations/alt0000000504 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN multiple DROP DEFAULT;

COMMIT;  

