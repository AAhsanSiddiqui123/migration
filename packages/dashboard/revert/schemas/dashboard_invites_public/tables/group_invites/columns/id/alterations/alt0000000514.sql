-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/id/alterations/alt0000000514 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

