-- Revert: schemas/dashboard_invites_public/tables/invites/columns/sender_id/alterations/alt0000000474 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN sender_id DROP DEFAULT;

COMMIT;  

