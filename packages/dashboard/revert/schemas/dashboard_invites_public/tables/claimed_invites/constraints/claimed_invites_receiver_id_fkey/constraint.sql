-- Revert: schemas/dashboard_invites_public/tables/claimed_invites/constraints/claimed_invites_receiver_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".claimed_invites 
    DROP CONSTRAINT claimed_invites_receiver_id_fkey;

COMMIT;  

