-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/id/alterations/alt0000000491 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

