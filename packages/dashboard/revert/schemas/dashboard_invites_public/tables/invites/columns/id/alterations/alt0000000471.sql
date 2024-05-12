-- Revert: schemas/dashboard_invites_public/tables/invites/columns/id/alterations/alt0000000471 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

