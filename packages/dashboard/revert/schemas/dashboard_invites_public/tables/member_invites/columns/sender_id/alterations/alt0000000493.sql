-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/sender_id/alterations/alt0000000493 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN sender_id DROP NOT NULL;


COMMIT;  

