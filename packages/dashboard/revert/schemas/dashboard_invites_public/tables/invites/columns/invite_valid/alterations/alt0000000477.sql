-- Revert: schemas/dashboard_invites_public/tables/invites/columns/invite_valid/alterations/alt0000000477 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN invite_valid DROP NOT NULL;


COMMIT;  

