-- Revert: schemas/dashboard_invites_public/tables/member_claimed_invites/columns/id/alterations/alt0000000509 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_claimed_invites 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

