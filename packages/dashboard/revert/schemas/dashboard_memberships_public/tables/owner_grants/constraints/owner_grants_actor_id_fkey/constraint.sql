-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/constraints/owner_grants_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".owner_grants 
    DROP CONSTRAINT owner_grants_actor_id_fkey;

COMMIT;  

