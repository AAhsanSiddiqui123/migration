-- Revert: schemas/dashboard_invites_public/tables/invites/constraints/invites_invite_token_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    DROP CONSTRAINT invites_invite_token_key;

COMMIT;  

