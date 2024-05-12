-- Revert: schemas/dashboard_invites_public/tables/group_claimed_invites/constraints/group_claimed_invites_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_claimed_invites 
    DROP CONSTRAINT group_claimed_invites_pkey;

COMMIT;  

