-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/entity_id/alterations/alt0000000507 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

