-- Revert: schemas/dashboard_invites_public/tables/invites/constraints/invites_sender_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    DROP CONSTRAINT invites_sender_id_fkey;

COMMIT;  

