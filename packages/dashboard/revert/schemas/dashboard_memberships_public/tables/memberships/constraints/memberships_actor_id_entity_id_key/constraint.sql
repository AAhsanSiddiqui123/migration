-- Revert: schemas/dashboard_memberships_public/tables/memberships/constraints/memberships_actor_id_entity_id_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    DROP CONSTRAINT memberships_actor_id_entity_id_key;

COMMIT;  

