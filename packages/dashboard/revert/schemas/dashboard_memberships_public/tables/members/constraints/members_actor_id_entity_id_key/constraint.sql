-- Revert: schemas/dashboard_memberships_public/tables/members/constraints/members_actor_id_entity_id_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".members 
    DROP CONSTRAINT members_actor_id_entity_id_key;

COMMIT;  

