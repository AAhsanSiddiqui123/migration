-- Revert: schemas/dashboard_invites_public/tables/group_invites/constraints/group_invites_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites 
    DROP CONSTRAINT group_invites_entity_id_fkey;

COMMIT;  

