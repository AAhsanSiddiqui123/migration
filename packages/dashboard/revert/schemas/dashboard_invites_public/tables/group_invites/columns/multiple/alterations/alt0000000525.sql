-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/multiple/alterations/alt0000000525 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN multiple DROP NOT NULL;


COMMIT;  

