-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/invite_valid/alterations/alt0000000498 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN invite_valid DROP DEFAULT;

COMMIT;  

