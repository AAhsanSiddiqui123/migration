-- Revert: schemas/dashboard_memberships_public/tables/grants/constraints/grants_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants 
    DROP CONSTRAINT grants_entity_id_fkey;

COMMIT;  

