-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/invite_count/alterations/alt0000000501 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN invite_count DROP NOT NULL;


COMMIT;  

