-- Revert: schemas/dashboard_memberships_public/tables/memberships/constraints/memberships_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    DROP CONSTRAINT memberships_entity_id_fkey;

COMMIT;  

