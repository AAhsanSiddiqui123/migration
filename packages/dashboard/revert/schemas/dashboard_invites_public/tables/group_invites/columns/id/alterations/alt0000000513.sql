-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/id/alterations/alt0000000513 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

