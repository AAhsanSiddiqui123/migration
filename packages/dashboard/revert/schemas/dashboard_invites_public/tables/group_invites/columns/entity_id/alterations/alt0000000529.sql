-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/entity_id/alterations/alt0000000529 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

