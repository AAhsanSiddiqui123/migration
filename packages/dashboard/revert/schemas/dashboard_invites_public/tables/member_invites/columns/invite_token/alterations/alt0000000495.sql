-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/invite_token/alterations/alt0000000495 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN invite_token DROP NOT NULL;


COMMIT;  

