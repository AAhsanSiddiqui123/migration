-- Revert: schemas/dashboard_invites_public/tables/invites/columns/multiple/alterations/alt0000000483 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN multiple DROP NOT NULL;


COMMIT;  

