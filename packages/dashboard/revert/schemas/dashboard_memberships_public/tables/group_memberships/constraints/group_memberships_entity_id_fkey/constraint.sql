-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/constraints/group_memberships_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships 
    DROP CONSTRAINT group_memberships_entity_id_fkey;

COMMIT;  

