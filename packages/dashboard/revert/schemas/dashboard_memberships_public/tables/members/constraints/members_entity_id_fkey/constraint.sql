-- Revert: schemas/dashboard_memberships_public/tables/members/constraints/members_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".members 
    DROP CONSTRAINT members_entity_id_fkey;

COMMIT;  

