-- Revert: schemas/dashboard_invites_public/tables/invites/constraints/invites_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites 
    DROP CONSTRAINT invites_pkey;

COMMIT;  

