-- Revert: schemas/dashboard_invites_public/tables/member_claimed_invites/constraints/member_claimed_invites_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_claimed_invites 
    DROP CONSTRAINT member_claimed_invites_pkey;

COMMIT;  

