-- Revert: schemas/dashboard_memberships_public/tables/group_members/constraints/group_members_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_members 
    DROP CONSTRAINT group_members_entity_id_fkey;

COMMIT;  

