-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/constraints/group_membership_defaults_entity_id_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_membership_defaults 
    DROP CONSTRAINT group_membership_defaults_entity_id_key;

COMMIT;  

