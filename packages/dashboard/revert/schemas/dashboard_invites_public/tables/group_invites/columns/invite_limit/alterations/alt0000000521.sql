-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/invite_limit/alterations/alt0000000521 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN invite_limit DROP NOT NULL;


COMMIT;  

